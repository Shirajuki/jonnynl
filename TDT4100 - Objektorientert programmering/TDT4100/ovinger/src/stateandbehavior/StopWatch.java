package stateandbehavior;
public class StopWatch {
  // CONSTRUCTOR
  private int totalTick = 0, timeTick = 0, tick = 0, lastTick = 0;
  private Boolean started = false, stopped = false;;
  private int laps = 0;

  // METHODS
  public void tick(int ticks) {
    this.totalTick += ticks;
    if (this.started && !this.stopped) {
      this.tick += ticks;
      this.timeTick += ticks;
    }
  }
  public void start() {
    this.started = true;
  }
  public void lap() {
    this.laps++;
    this.lastTick = this.tick;
    this.tick = 0;
  }
  public void stop() {
    this.stopped = true;
    this.lap();
  }
  public String toString() {
    return "Totaltick:"+this.totalTick+" Timetick:"+this.timeTick+" LastTick:"+this.lastTick+" tick:"+this.tick;
  }
  // GET/SET
  public Boolean isStarted() {
    return this.started;
  }
  public Boolean isStopped() {
    return this.stopped;
  }
  public int getTicks() {
    return this.totalTick;
  }
  public int getTime() {
    if (this.started) {
      return this.timeTick;
    } else {
      return -1;
    }
  }
  public int getLapTime() {
    if (this.started) {
      return this.tick;
    } else {
      return -1;
    }
  }
  public int getLastLapTime() {
    if (this.laps > 0 && this.started) {
      return this.lastTick;
    } else {
      return -1;
    }
  }
  // MAIN
  public static void main(String[] args) {
    StopWatch sw = new StopWatch();
    System.out.printf("\n%s\n",sw.toString());
    System.out.printf("%s\n",sw.getTicks());
    System.out.printf("%s\n",sw.getTime());
    System.out.printf("%s\n",sw.getLapTime());
    System.out.printf("%s\n",sw.getLastLapTime());
    sw.tick(1);
    System.out.printf("\n%s\n",sw.toString());
    System.out.printf("%s\n",sw.getTicks());
    sw.tick(4);
    System.out.printf("\n%s\n",sw.toString());
    System.out.printf("%s\n",sw.isStarted());
    sw.start();
    sw.tick(4);
    System.out.printf("\n%s\n",sw.toString());
    System.out.printf("%s %s\n",sw.isStarted(), sw.isStopped());
    System.out.printf("%s\n",sw.getTicks());
    System.out.printf("%s\n",sw.getLastLapTime());
    sw.lap();
    sw.tick(5);
    System.out.printf("\n%s\n",sw.toString());
    sw.tick(2);
    System.out.printf("\n%s\n",sw.toString());
    System.out.printf("%s\n",sw.getTicks());
    System.out.printf("%s\n",sw.getTime());
    System.out.printf("%s\n",sw.getLapTime());
    System.out.printf("%s\n",sw.getLastLapTime());
    sw.stop();
    System.out.printf("\n%s\n",sw.toString());
    System.out.printf("%s %s\n",sw.isStarted(), sw.isStopped());
    System.out.printf("%s\n",sw.getTime());
    System.out.printf("%s\n",sw.getTicks());
  }
}
