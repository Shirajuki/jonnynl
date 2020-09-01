import entity.*;
import java.util.Random;
import java.util.Scanner;
import java.util.HashMap;
public class Game {
  // CONSTRUCTOR
  Boolean menu = true, lobby = false, battle = false;
  Enemy enemy;
  public Game() {
    this.menu = true;
  }
  // METHODS
  public void mainmenu() {
    System.out.println("\n\n\n\n\n\n\n\nWelcome to J9-RPG!");
    System.out.println("1. Start game");
    System.out.println("2. Load save");
    System.out.println("3. Exit");
    Scanner input = new Scanner(System.in);
    int n = input.nextInt();
    if (n == 1) {
      System.out.println("Starting...");
      this.menu = false;
      this.lobby = true;
    } else if (n == 2) {
      System.out.println("TBA...");
    } else {
      System.out.println("Exiting...");
      this.menu = false;
    }
  }
  public void lobby(Player p) {
    System.out.println("\n\n\n\n\n\n\n\nYou are at lobby.");
    System.out.println("1. Battle");
    System.out.println("2. Heal (50$)");
    System.out.println("3. Info");
    System.out.println("4. Save");
    System.out.println("5. Back to main menu!");
    Scanner input = new Scanner(System.in);
    int n = input.nextInt();
    if (n == 1) {
      System.out.println("Finding enemy...");
      System.out.println("\n\n\n\n\n\n\n\n");
      this.enemy = new Enemy("Slime",7,0,1,1,1,25);
      System.out.printf("You encountered a %s!!!\n", this.enemy.name);
      this.lobby = false;
      this.battle = true;
    } else if (n == 2) {
      if (p.gold >= 50) {
        System.out.println("Healed player for 50$...");
        p.hp = p.hpM;
        System.out.printf("Your hp is now %s/%s\n", p.hp, p.hpM);
      } else {
        System.out.printf("You don't have enough gold!: %s\n", p.gold);
      }
    } else if (n == 3) {
      System.out.println("\n\n\n\n\n\n\n\n");
      p.showInfo();
    } else if (n == 4) {
      System.out.println("TBA SAVE");
    } else {
      System.out.println("Returning to main menu...");
      this.menu = true;
      this.lobby = false;
    }
  }
  public void battle(Player p) {
    System.out.println("\n\n\n\n\n\n\n\nWhat will you do?");
    System.out.println("1. Attack");
    System.out.println("2. TBA");
    System.out.println("3. Run");
    Scanner input = new Scanner(System.in);
    int n = input.nextInt();
    System.out.println("\n\n\n\n\n\n\n\n");
    if (n == 1) {
      int dmg = 4*p.atk - 2*this.enemy.def;
      System.out.printf("Attacked %s for %s hp\n",this.enemy.name,dmg);
      this.enemy.hp -= dmg;
      System.out.printf("Enemy have %s hp left!\n", this.enemy.hp);
      if (this.enemy.hp <= 0) {
        System.out.printf("Enemy %s died!\n",this.enemy.name);
        p.gold += this.enemy.gold;
        System.out.printf("You have earned %s gold!\n",this.enemy.gold);
        this.battle = false;
        this.lobby = true;
        System.out.println("Returning to lobby...");
      } else {
        int edmg = 4*this.enemy.atk - 2*p.def;
        System.out.printf("%s Attacked you for %s hp\n",this.enemy.name,edmg);
        p.hp -= edmg;
        System.out.printf("You have %s hp left!\n", p.hp);
      }
    } else if (n == 2) {
      System.out.println("TBA");
    } else {
      System.out.println("You ran...");
      this.battle = false;
      this.lobby = true;
    }
    if (p.hp <= 0) {
      System.out.println("GAME OVER!!!");
      System.out.println("You have died!");
      System.out.println("Returning to main menu...");
      this.battle = false;
      this.lobby = false;
      this.menu = true;
    }
  }

  public static void main(String[] args) {
    Game game = new Game();
    Player p = new Player("J9",25,0,1,1,1,100);
    while (true) {
      if (game.menu) {
        game.mainmenu();
      } else if (game.lobby) {
        game.lobby(p);
      } else if (game.battle) {
        game.battle(p);
      } else {
        break;
      }
    }
  }
}
