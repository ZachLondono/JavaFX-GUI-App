MAINCLASS = app.App
COMPILER = javac
PROJECTDIR = /home/zachary/Documents/Code/JavaFx

OUTPUTDIR = $(PROJECTDIR)/bin
SOURCEDIR = $(PROJECTDIR)/src
FXPATH = /home/zachary/libs/javafx-sdk-11.0.2/lib
FXMODULES = javafx.controls,javafx.fxml

CLASSPATH = /home/zachary/Documents/Code/JavaFx/bin:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx-swt.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.base.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.controls.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.fxml.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.graphics.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.media.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.swing.jar:/home/zachary/libs/javafx-sdk-11.0.2/lib/javafx.web.jar

all:
	$(COMPILER) -cp $(CLASSPATH) -d $(OUTPUTDIR) $(SOURCEDIR)/*/*.java

run: 
	java --module-path $(FXPATH) --add-modules $(FXMODULES) -cp $(OUTPUTDIR) $(MAINCLASS)

clean:
	rm $(OUTPUTDIR)/*.class 
