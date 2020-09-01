import java.util.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.shape.*;

import entity.*;
//export PATH_TO_FX=/home/j9/Documents/javafx-sdk-11.0.2/lib/
//javac --module-path $PATH_TO_FX --add-modules javafx.controls Hallo.java
//java --module-path $PATH_TO_FX --add-modules javafx.controls Hallo

public class Game extends Application {
  @Override
  public void start(Stage stage) throws Exception {

    BorderPane root = new BorderPane(); // Root of the scene graph

    // Add one Text node in each surrounding region
    root.setTop(new Text("top"));
    root.setBottom(new Text("bottom"));
    root.setLeft(new Text("left"));
    root.setRight(new Text("right"));

    Pane shapesPane = new Pane();
    shapesPane.setPrefSize(300, 300);
    Line line = new Line(10, 10, 100, 100); // x1, y1, x2, y2
    line.getStrokeDashArray().setAll(10.0d, 10.0d); // dashes
    Rectangle rect = new Rectangle(150, 10, 30, 40); // x, y, w, h
    rect.setFill(Color.BLUE);
    Ellipse ell = new Ellipse(40, 180, 40, 30); // cx, cy, rx, ry
    ell.setStroke(Color.RED);
    ell.setStrokeWidth(5);
    ell.setFill(Color.GREEN);
    Text text = new Text(180, 180, "center");
    List<String> fonts = Font.getFamilies();
    text.setFont(new Font(fonts.get((int) (Math.random() * fonts.size())), 32));
    shapesPane.getChildren().addAll(line, rect, ell, text);
    root.setCenter(shapesPane);

    Scene scene = new Scene(root, 500, 500);

    stage.setScene(scene);
    stage.setTitle("BorderPaneApplication");
    stage.show();
  }

  public static void main(String[] args) {
    System.out.println("[MAIN]: starting...");
    Player p = new Player("J9",25,0,1,1,1,100);
  }
}
