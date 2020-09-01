package uke5;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class MatteController extends Application{
	@FXML TextField a;
	@FXML TextField b;
	@FXML Button pluss;
	@FXML Button minus;
	@FXML Button gange;
	@FXML Button dele;
	@FXML Label svarfelt;
	Matte m = new Matte();
	@Override
	public void start(final Stage primaryStage) throws Exception {
		primaryStage.setTitle("MATTE");
		Scene scene = new Scene(FXMLLoader.load(getClass().getResource("matteGUI.fxml")));
		scene.getStylesheets().add(getClass().getResource("matte.css").toExternalForm());
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	@FXML void initialize() { 
        pluss.setOnAction(e -> numeric(0));
        minus.setOnAction(e -> numeric(1));
        gange.setOnAction(e -> numeric(2));
        dele.setOnAction(e -> numeric(3));
    }
	public void numeric(int n) {
		m.setA(Double.parseDouble(a.getText()));
		m.setB(Double.parseDouble(b.getText()));
		switch(n) {
			case 0:
				svarfelt.setText(Double.toString(m.pluss()));
		    break;
			case 1:
				svarfelt.setText(Double.toString(m.minus()));
		    break;
			case 2:
				svarfelt.setText(Double.toString(m.gange()));
			break;
			case 3:
				svarfelt.setText(Double.toString(m.dele()));
			break;
		}
	}
	public static void main(final String[] args) {
		launch(args);
	}
	
}
