MAINCLASS = app.App
PROJECTDIR = /home/zachary/Documents/Code/JavaFx

OUTPUTDIR = $(PROJECTDIR)/bin
SOURCEDIR = $(PROJECTDIR)/src
FXPATH = /home/zachary/libs/javafx-sdk-11.0.2/lib
FXMODULES = javafx.controls,javafx.fxml

CLASSPATH = $(OUTPUTDIR):$(FXPATH)/javafx-swt.jar:$(FXPATH)/javafx.base.jar:$(FXPATH)/javafx.controls.jar:$(FXPATH)/javafx.fxml.jar:$(FXPATH)/javafx.graphics.jar:$(FXPATH)/javafx.media.jar:$(FXPATH)/javafx.swing.jar:$(FXPATH)/javafx.web.jar

all:
	javac -cp $(CLASSPATH) -d $(OUTPUTDIR) $(SOURCEDIR)/*/*.java

run: 
	java --module-path $(FXPATH) --add-modules $(FXMODULES) -cp $(OUTPUTDIR) $(MAINCLASS)

clean:
	find $(OUTPUTDIR) -name "*.class" -type f -delete

