package application;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.paint.Color;
import javafx.scene.paint.ImagePattern;
import javafx.animation.*;
import javafx.scene.shape.*;
import javafx.scene.canvas.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import java.util.Scanner;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class Main extends Application {
	private final int GAME_WIDTH 	= 600;
	private final int GAME_HEIGHT 	= 400;
	private final int TILE_SIZE 	= 30;
	private final BorderPane root = new BorderPane();
	private List<Tile> entities = new ArrayList<>();
	private List<Tile> tiles = new ArrayList<>();
	private Canvas canvas = new Canvas( GAME_WIDTH, GAME_HEIGHT );
	private GraphicsContext gc = canvas.getGraphicsContext2D();

	private boolean started = true;
	private boolean[] pos = {false,false,false,false};
	private boolean shooting = false;
	private int[][] map = new int[0][0];
	private int[] scroll = {0,0};
	private int air_timer = 0;
	private int djump = 0;
	private float vm = 0;
	private float[] mv = {0,0};
	private long startNanoTime = System.nanoTime();
	
	private List<Enemy> enemies = new ArrayList<>();
	private List<Particle> particles = new ArrayList<>();
	private Boss boss = new Boss(2,3,TILE_SIZE*6,TILE_SIZE*8,Color.RED,-1);
	private Player player = new Player(5,3,TILE_SIZE,TILE_SIZE+10,Color.TEAL,-1);
	public Random random = new Random();
	
	public Main() {
		System.out.println("yo" + scroll[0] + "+" + scroll[1]);
		startGame();
	}
	public int randint(int min, int max) {
		return random.nextInt(max + 1 - min) + min;
	}
	private class Tile {
		int x = 0, y = 0;
		int height = TILE_SIZE, width = TILE_SIZE;
		private Color color;
		int type = -1;
		Image img;
		public Tile(int x, int y, int width, int height, Color color, int type) {
			this.height = height;
			this.width = width;
			this.x = x*this.width;
			this.y = y*this.height;
			this.color = color;
			this.type = type;
			if (this.type != -1) {
				String imgStr = "images/"+this.type+".png";
				img = new Image(imgStr);
			}
		}
		public void draw() {
			gc.beginPath();
			gc.setFill(color);
			if (this.type == -1) {
				gc.fillRect(this.x-scroll[0],this.y-scroll[1],this.width,this.height);
			} else {
				gc.drawImage(img, this.x-scroll[0], this.y-scroll[1], this.width, this.height);
			}
			gc.closePath();
		}
	}
	private class Bullet extends Tile{
		int dx, dy, locX, locY;
		Color color;
		private boolean dead = false;
		public Bullet(int x, int y, int width, int height, Color color, int type, int dx, int dy) {
			super(x,y,width,height,color,type);
			this.x = x;
			this.y = y;
			this.dx = dx;
			this.dy = dy;
			this.color = color;
		}
		public boolean isDead() { 
			if (this.dead) {
				for (int i = 0; i < 20; i++) {
					double[] v = {(random.nextDouble()-randint(0,1))*randint(1,2),(random.nextDouble()-randint(0,1))*randint(1,2)};
					Particle p = new Particle(this.x,this.y,10,10,Color.RED,v,0.2,0.005);
					particles.add(p);
				}	
			}
			return this.dead; 
		}
		public void setDead(boolean b) { this.dead = b; }
		public void draw() {
			this.x += dx;
			locX = (int)this.x/TILE_SIZE;
			locY = (int)this.y/TILE_SIZE;
			try {
				if (map[locY][locX] != 0) {
					this.dead = true;
				}
			}
			catch(Exception e) {}

			this.y += dy;
			locX = (int)this.x/TILE_SIZE;
			locY = (int)this.y/TILE_SIZE;
			try {
				if (map[locY][locX] != 0) {
					this.dead = true;
				}
			}
			catch(Exception e) {}
			gc.beginPath();
			gc.setFill(color);
			gc.fillArc(this.x-scroll[0], this.y-scroll[1], this.width, this.height, 0, 360, ArcType.ROUND);
			gc.closePath();
		}
	}
	private class Player extends Tile {
		private int[] checkpoint = {0,0};
		int face = 1;
		List<Bullet> bullets = new ArrayList<>();
		int shootcd = 20, mshootcd = 20;
		Color color;
		public Player(int x, int y, int width, int height, Color color, int type) {
			super(x,y,width,height,color,type);
			this.color = color;
			this.checkpoint[0] = this.x;
			this.checkpoint[1] = this.y;
		}
		public void shoot() {
			if (shootcd > mshootcd) {
				Bullet b = new Bullet(this.x+this.width/2, this.y+this.height/2 + randint(-7,7), 10, 10, Color.RED, -1, 3*face, 0);
				bullets.add(b);
				shootcd = 0;
			}
		}
		public void checkpoint(int x, int y) {
			this.checkpoint[0] = x;
			this.checkpoint[1] = y;
		}
		public void dead() {
			System.out.println("DEAD");
			for (int i = 0; i < 50; i++) {
				double[] v = {(random.nextDouble()-randint(0,1))*randint(2,4),(random.nextDouble()-randint(0,1))*randint(2,4)};
				Particle p = new Particle(this.x,this.y,16,16,Color.PINK,v,0.2,0.005);
				particles.add(p);
			}
			this.x = this.checkpoint[0];
			this.y = this.checkpoint[1];
		}
		public void draw() {
			this.shootcd++;
			gc.beginPath();
			gc.setFill(color);
			gc.fillRect(this.x-scroll[0],this.y-scroll[1],this.width,this.height);
			gc.closePath();
		}
	}
	private class Enemy extends Tile {
		public Enemy(int x, int y, int width, int height, Color color, int type) {
			super(x,y,width,height,color,type);
		}
	}
	private class Boss extends Tile {
		List<List<Double>>waypoint = new ArrayList<>();
		Rectangle hpBar = new Rectangle(0,0,GAME_WIDTH,30);
		int mhp = 100, hp = 100;
		int i = 0, cd = 0;
		boolean dead = false;
		double cspeed = 0;
		Color color;
		List<Double> curWaypoint;
		public Boss(int x, int y, int width, int height, Color color, int type) {
			super(x,y,width,height,color,type);
			this.color = color;
			hpBar.setFill(Color.RED); 
		}
		public void init() {
			this.waypoint.add(new ArrayList<Double>(Arrays.asList(200.0,250.0,200.0))); 
			this.waypoint.add(new ArrayList<Double>(Arrays.asList(350.0,160.0,200.0))); 
			this.waypoint.add(new ArrayList<Double>(Arrays.asList(650.0,-50.0,300.0))); 
			this.waypoint.add(new ArrayList<Double>(Arrays.asList(1050.0,160.0,200.0))); 
			this.waypoint.add(new ArrayList<Double>(Arrays.asList(1200.0,250.0,200.0))); 
			curWaypoint = this.waypoint.get(i);
			getConstantSpeed(curWaypoint.get(2));
			this.mhp = 100;
			this.hp = mhp;
			this.dead = false;
			root.getChildren().add(hpBar);
		}
		private void getConstantSpeed(double time) {
			var a = this.x-this.width/2 - curWaypoint.get(0);
			var b = this.y-this.height/2 - curWaypoint.get(1);
			var c = Math.sqrt( a*a + b*b );
			cspeed = c/(time*10);
		}
		public boolean isDead() { return this.dead; }
		public void hit() {
			this.hp--;
			if (this.hp <= 0)
				this.dead();
		}
		public void dead() {
			this.dead = true;
			for (int i = 0; i < 50; i++) {
				double[] v = {(random.nextDouble()-randint(0,1))*randint(2,4),(random.nextDouble()-randint(0,1))*randint(2,4)};
				Particle p = new Particle(this.x,this.y,16,16,Color.PINK,v,0.2,0.02);
				particles.add(p);
			}
			root.getChildren().remove(hpBar);
		}
		public void draw() {
			if (cd++ >= curWaypoint.get(2)) {
				this.i++;
				curWaypoint = this.waypoint.get(i%this.waypoint.size());
				//getConstantSpeed(curWaypoint.get(2));
				cd = 0;
			}
			//this.x = (int)lerp(this.x-this.width/2, curWaypoint.get(0), cspeed);
			//this.y = (int)lerp(this.y-this.height/2, curWaypoint.get(1), cspeed);
			this.x += (curWaypoint.get(0) - this.x) * 0.001; // old style
			this.y += (curWaypoint.get(1) - this.y) * 0.001; // old style
			hpBar.setWidth((GAME_WIDTH*this.hp/this.mhp));
			if (this.dead == false) {
				gc.beginPath();
				gc.setFill(color);
				gc.fillRect(this.x-scroll[0],this.y-scroll[1],this.width,this.height);
				gc.closePath();
			}
		}
	}
	private class Particle {
		private double x = 0, y = 0, d = 0, g = 0;
		private double[] v = {0,0};
		private double height = TILE_SIZE, width = TILE_SIZE;
		private Color color;
		private boolean dead = false;
		private int locX = 0, locY = 0;
		public Particle(double x, double y, int width, int height, Color color, double[] v, double d, double g) {
			this.x = x;
			this.y = y;
			this.height = height;
			this.width = width;
			this.color = color;
			this.v = v;
			this.d = d;
			this.g = g;
		}
		public boolean isDead() { return this.dead; }
		public void draw() {
			this.x += this.v[0];
			locX = (int)this.x/TILE_SIZE;
			locY = (int)this.y/TILE_SIZE;
			try {
				if (map[locY][locX] != 0) {
					this.v[0] = -0.85*this.v[0];
					this.x += this.v[0]*2;
				}
			}
			catch(Exception e) {}

			this.y += this.v[1];
			locX = (int)this.x/TILE_SIZE;
			locY = (int)this.y/TILE_SIZE;
			try {
				if (map[locY][locX] != 0) {
					this.v[1] = -0.85*this.v[1];
					this.y += this.v[1]*2;
				}
			}
			catch(Exception e) {}

			this.width -= d;
			this.height -= d; // 0.2
			this.v[1] += g; //0.005
			if (this.width <= 0) {
				this.dead = true;
			}
			gc.beginPath();
			gc.setFill(color);
			gc.fillRect(this.x-scroll[0],this.y-scroll[1],this.width,this.height);
			gc.closePath();
		}
	}
	public double lerp(double start, double end, double amt){
  		return (1-amt)*start+amt*end;
	}
	public void startGame() {
		restart();
		loadMap(1);
		started = true;
	}
	public void restart() {
		root.getChildren().clear();
		entities = new ArrayList<>();
		tiles = new ArrayList<>();
		enemies = new ArrayList<>();
		particles = new ArrayList<>();
		boss = new Boss(2,3,TILE_SIZE*6,TILE_SIZE*8,Color.RED,-1);
		player = new Player(5,3,TILE_SIZE,TILE_SIZE+10,Color.TEAL,-1);
		boss.init();
		root.getChildren().add(canvas);
	}
	public void loadMap(int n) {
		List<int[]> maps = new ArrayList<>();
		try {
			Scanner in = new Scanner(new FileReader("map"+n+".txt"));
			while(in.hasNext()) {
				String line = in.nextLine();
				int[] lines = new int[line.length()];
				for (int i = 0; i < lines.length; i++) {
					lines[i] = Integer.parseInt(line.substring(i, i+1));
				}
				maps.add(lines);
			}
			in.close();
		} catch (FileNotFoundException e1) {
			System.out.println("[Error]: map file couldn't be found!");
		}
		map = new int[maps.size()][maps.get(0).length];
		for (int i = 0; i < map.length; i++) {
			for (int j = 0; j < map[i].length; j++) {
				map[i][j] = maps.get(i)[j];
				Tile t = new Tile(j,i,TILE_SIZE,TILE_SIZE,Color.TEAL,-1);
				if (map[i][j] == 2) {
					t = new Tile(j,i,TILE_SIZE,TILE_SIZE,Color.GREEN,1);
					tiles.add(t);
				} else if (map[i][j] == 1) {
					t = new Tile(j,i,TILE_SIZE,TILE_SIZE,Color.BROWN,20);
					tiles.add(t);
				} else if (map[i][j] == 9) {
					t = new Tile(j,i,TILE_SIZE,TILE_SIZE,Color.BLUE,21);
					tiles.add(t);
				}
				if (map[i][j] != 0 && map[i][j] != 9) {
					entities.add(t);
				}
			}
		}
	}
	public Boolean collision(Tile obj1, Tile obj2) {
		return (obj1.x < obj2.x + obj2.width && obj1.x + obj1.width > obj2.x && 
			obj1.y < obj2.y + obj2.height && obj1.y + obj1.height > obj2.y);
	}
	public List<Tile> collision_test(Tile obj, List<Tile> tiles) {
		List<Tile> hit_list = new ArrayList<>();
		for (int i = 0; i < tiles.size(); i++) {
			Tile tile = tiles.get(i);
			if (collision(obj,tile)) {
				hit_list.add(tile);
			}
		}
		return hit_list;
	}
	public boolean[] move(Tile obj, float[] mv, List<Tile> tiles, double p) {
		boolean[] collision = {false,false,false,false};
		obj.x += mv[0]*p;
		List<Tile> hit_list = collision_test(obj, tiles);
		for (Tile tile : hit_list) {
			if (mv[0] > 0) {
				obj.x = tile.x - obj.width;
				collision[2] = true;
			}
			else if (mv[0] < 0) {
				obj.x = tile.x + tile.width;
				collision[0] = true;
			}
		}
		obj.y += mv[1]*p;
		hit_list = collision_test(obj,tiles);
		for (Tile tile : hit_list) {
			if (mv[1] > 0) {
				obj.y = tile.y - obj.height;
				collision[3] = true;
			}
			else if (mv[1] < 0) {
				obj.y = tile.y + tile.height;
				collision[1] = true;
			}
		}
		return collision;
	}
	@Override
	public void start(Stage stage) throws Exception {
		try {
			Scene scene = new Scene(root,GAME_WIDTH,GAME_HEIGHT,Color.CYAN);
			//scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			scene.setOnKeyPressed(new EventHandler<KeyEvent>() {
				@Override
				public void handle(KeyEvent event) {
					//System.out.println(event.getCode());
					switch (event.getCode()) {
						case LEFT:  pos[0] = true; break;
						case UP:    pos[1] = true; djump++; break;
						case RIGHT: pos[2] = true; break;
						case DOWN:  pos[3] = true; break;
						case Z:  	shooting = true; break;
					}
				}
			});
			scene.setOnKeyReleased(new EventHandler<KeyEvent>() {
				@Override
				public void handle(KeyEvent event) {
					switch (event.getCode()) {
						case LEFT:  pos[0] = false; break;
						case UP:    pos[1] = false; break;
						case RIGHT: pos[2] = false; break;
						case Z:  	shooting = false; break;
					}
				}
			});
			new AnimationTimer() {
				public void handle(long currentNanoTime) {
					long progress = currentNanoTime - startNanoTime;
					update(progress);
					startNanoTime = currentNanoTime;
				}
			}.start();
			stage.setTitle("Platformer");
			stage.setResizable(false);
			stage.setScene(scene);
			stage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void update(long progress) {
		double p = progress/5000000;
		//double p = (progress - startNanoTime)/1000000000.0;
		//System.out.println(p);
		if (started) { // GAME LOOOOPS
			gc.clearRect(0, 0, GAME_WIDTH, GAME_HEIGHT);
			//System.out.println(player.x + "+" + player.y);
			//System.out.println(player.bullets.size() + " - " + root.getChildren().size() + " - " + particles.size() + " - " + tiles.size());
			//System.out.println(p);
			//p = 1;
			scroll[0] += (player.x-scroll[0]-152)/20 * p;
			scroll[1] += (player.y-scroll[1]-152)/20 * p;
			for (int i = tiles.size()-1;i >= 0;i--) {
				tiles.get(i).draw();
			}
			// Shooting & particles
			if (shooting)
				player.shoot();
			for (int i = player.bullets.size()-1; i >= 0; i--) {
				Bullet b = player.bullets.get(i);
				b.draw();
				if (Math.abs(b.x - player.x) > 500 || Math.abs(b.y - player.y) > 500 || b.isDead()) {
					player.bullets.remove(b);
				}
				if (!boss.isDead() && collision(b, boss)) {
					boss.hit();
					b.setDead(true);
				}
			}
			for (int i = particles.size()-1;i >= 0;i--) {
				Particle ppp = particles.get(i);
				ppp.draw();
				if (ppp.isDead()) {
					particles.remove(ppp);
				}
			}
			// Movement
			if (pos[1] && air_timer < 6) //jump
				vm = -6;
			if (pos[1] && djump == 2) {
				for (int i = 0; i < 10; i++) {
					double[] v = {(random.nextDouble()-randint(0,1))*randint(1,2),(random.nextDouble())*randint(1,2)};
					Particle pp = new Particle(player.x+player.width/2,player.y+player.height,16,16,Color.LIGHTGRAY,v,0.3,0.01);
					particles.add(pp);
				}
				vm = -5;
				djump++;
			}
			mv[0] = 0;
			mv[1] = 0;
			if (pos[0]) {
				mv[0] -= 3;
				player.face = -1;
			}
			if (pos[2]) {
				mv[0] += 3;
				player.face = 1;
			}
			mv[1] += vm;
			vm += 0.15;
			if (vm > 9)
				vm = 9;
			// Collision
			boolean[] collisions = move(player, mv, entities, p);
			if (collisions[1]) // touch above
				vm = 0;
			if (collisions[3]) { // touch ground
				air_timer = 0;
				vm = 0;
				djump = 0;
			} else {
				air_timer += 1;
			}
			if (player.y > 600) {
				player.dead();
				air_timer = 0;
			}
			//System.out.println(player.x + "---" + player.y);
			//System.out.println(air_timer);
			boss.draw();
			player.draw();
			if (player.x > 1360) {
				restart();
				loadMap(2);
				player.x = 17*TILE_SIZE;
				player.checkpoint(player.x, 0);
			}
		}
	}
	public static void main(String[] args) {
		launch(args);
	}
}
