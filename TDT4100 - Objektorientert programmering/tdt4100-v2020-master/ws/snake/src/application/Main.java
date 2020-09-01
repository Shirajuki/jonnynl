package application;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.paint.Color;
import javafx.animation.*;
import javafx.scene.shape.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Main extends Application {
    int GAME_WIDTH = 400, GAME_HEIGHT = 400, TILE_SIZE = 10;
    private List<Tile> SNAKE_ARRAY = new ArrayList<Tile>();
    BorderPane root = new BorderPane();
    int pos = 3;
    int mW = (GAME_WIDTH - TILE_SIZE*2)/TILE_SIZE;
    int mH = (GAME_HEIGHT - TILE_SIZE*2)/TILE_SIZE;
    int timer = 10;
    int timerNow = 0;
    boolean started = true;
    Color snakeColor = Color.BLUE;
    Tile apple = new Tile(2,3,Color.RED);
    public Main() {
	startGame();
    }
    public void startGame() {
	if (SNAKE_ARRAY.size() > 0) SNAKE_ARRAY.clear();
	SNAKE_ARRAY.add(new Tile(4,2,snakeColor));
	SNAKE_ARRAY.add(new Tile(3,2,snakeColor));
	SNAKE_ARRAY.add(new Tile(2,2,snakeColor));
	SNAKE_ARRAY.add(new Tile(1,2,snakeColor));
	SNAKE_ARRAY.add(new Tile(0,2,snakeColor));
    }
    private class Tile {
	int x = 0, y = 0;
	Color color;;
	public Tile(int x, int y, Color color) {
	    this.x = x;
	    this.y = y;
	    this.color = color;
	}
	public void draw() {
	    Rectangle rect = new Rectangle();
	    rect.setX(5+this.x*TILE_SIZE); 
	    rect.setY(5+this.y*TILE_SIZE); 
	    rect.setWidth(TILE_SIZE); 
	    rect.setHeight(TILE_SIZE);
	    rect.setFill(Color.TRANSPARENT);
	    rect.setStroke(color);
	    root.getChildren().add(rect);
	}
    }
    public void move() {
	Tile tail = SNAKE_ARRAY.get(SNAKE_ARRAY.size()-1);
	SNAKE_ARRAY.remove(SNAKE_ARRAY.size()-1); // pop
	Tile head = SNAKE_ARRAY.get(0);
	tail.x = head.x;
	tail.y = head.y;
	if (pos == 1) {tail.x--;} 
	else if (pos == 2) {tail.y--;} 
	else if (pos == 3) {tail.x++;}
	else {tail.y++;}
	SNAKE_ARRAY.add(0, tail);
	if (tail.x < 0 || tail.x > mW || tail.y < 0 || tail.y > mH || bodyOverlap(tail.x,tail.y)) started = false;
    }
    public void grows(int x, int y) {
	Tile tail = new Tile(x,y,snakeColor);
	if (pos == 1) {tail.x++;} 
	else if (pos == 2) {tail.y++;} 
	else if (pos == 3) {tail.x--;}
	else {tail.y--;}
	SNAKE_ARRAY.add(SNAKE_ARRAY.size()-1, tail);
    }
    private boolean bodyOverlap(int x, int y) {
	int count = 0;
	for (int i = 0; i < SNAKE_ARRAY.size(); i++) {
	    count = 0;
	    Tile snake1 = SNAKE_ARRAY.get(i);
	    for (int j = 0; j < SNAKE_ARRAY.size(); j++) {
		Tile snake2 = SNAKE_ARRAY.get(j);
		if (i != j && snake1.x == x && snake1.y == y && snake1.x == snake2.x && snake1.y == snake2.y) {
		    count++;
		}
		if (count > 0) return true;
	    }
	}
	return false;
    }
    private boolean appleOverlap(int x, int y) {
	boolean b = false; 
	for (int i = 0; i < SNAKE_ARRAY.size(); i++) {
	    Tile snake1 = SNAKE_ARRAY.get(i);
	    if (snake1.x == x && snake1.y == y) b = true;
	}
	return b;
    }
    @Override
    public void start(Stage stage) throws Exception {
	try {
	    Scene scene = new Scene(root,GAME_WIDTH,GAME_HEIGHT,Color.WHITE);
	    scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
	    scene.setOnKeyPressed(new EventHandler<KeyEvent>() {
		@Override
		public void handle(KeyEvent event) {
		    switch (event.getCode()) {
			case LEFT:  if (pos != 3) pos = 1; break;
			case UP:    if (pos != 4) pos = 2; break;
			case RIGHT: if (pos != 1) pos = 3; break;
			case DOWN:  if (pos != 2) pos = 4; break;
		    }
		    if (!started) {
			startGame();
			started = true;
		    }
		}
	    });
	    // HOW TO DO GAME LOOPS: THIS!

	    long startNanoTime = System.nanoTime();
	    new AnimationTimer() {
		public void handle(long currentNanoTime) {
		    timerNow++;
		    if (timerNow > timer && started) { 
			// GAME LOOOOPS
			move();
			root.getChildren().clear(); // CLEAR SCREEN
			for (int i = 0; i < SNAKE_ARRAY.size(); i++) {
			    Tile e = SNAKE_ARRAY.get(i);
			    e.draw();
			    if (apple.x == e.x && apple.y == e.y) {
				grows(e.x, e.y);
				int rx = new Random().nextInt(mW);
				int ry = new Random().nextInt(mH);
				apple.x = rx;
				apple.y = ry;
			    }
			}
			apple.draw();
			timerNow = 0;
		    }
		}
	    }.start();
	    stage.setTitle("Snake");
	    stage.setResizable(false);
	    stage.setScene(scene);
	    stage.show();
	} catch(Exception e) {
	    e.printStackTrace();
	}
    }
    public static void main(String[] args) {
	launch(args);
    }
}
