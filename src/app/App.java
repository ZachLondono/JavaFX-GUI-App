package app;

import javafx.application.Application;
import javafx.stage.Stage;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;

import controllers.Controller;

public class App extends Application {

	public static void main(String[] args) {
		Controller controller = new Controller();
		launch(args);
	}

	@Override
    public void start(Stage stage) throws Exception {

		String title = "Hello World";
		String fxmlPath = "hello.fxml";
		
	 	FXMLLoader loader;	
		
		loader = new FXMLLoader(getClass().getResource("/view/" + fxmlPath));
		Parent root = (Parent) loader.load();

		Scene scene = new Scene(root, 700, 475);
		stage.setScene(scene);
		stage.setTitle(title);
		stage.setResizable(false);
		stage.show();

    }

}

