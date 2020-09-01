package entity;
public class Enemy {
  // CONSTRUCTOR
  public String name = "";
  public int hp = 0, hpM = 0, exp = 0, atk = 0, def = 0, dex = 0;
  public int gold = 0;
  public Enemy(String name, int hp, int exp, int atk, int def, int dex, int gold) {
    this.name = name;
    this.hp = hp;
    this.hpM = hp;
    this.exp = exp;
    this.atk = atk;
    this.def = def;
    this.dex = dex;
    this.gold = gold;
  }
  // Formula: 4*user.atk - 2*target.def
  // METHODS
  public void showInfo() {
    System.out.println("Name: "+this.name);
    System.out.println("HP: "+this.hp);
    System.out.println("EXP: "+this.exp);
    System.out.println("ATK: "+this.atk);
    System.out.println("DEF: "+this.def);
    System.out.println("DEX: "+this.dex);
  }
  public static void main(String[] args) {
    // name, hp, exp, atk, def, dex
    Enemy ee = new Enemy("Slime",10,0,1,1,1,100);
    ee.showInfo();
  }
}
