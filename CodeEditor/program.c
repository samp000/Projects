
#include <stdlib.h>
#include <sys/types.h>
#include <signal.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>
#include <gtk/gtk.h>
#include <math.h>
#include <ctype.h>
#include <dirent.h>

GtkWidget *window;
GtkWidget *fixed;
GtkWidget *btnSave;
GtkWidget *textView;
GtkWidget *flNameLabel;
GtkWidget *label;
GtkWidget *runBtn;
GtkWidget *output;
GtkWidget *error;
GtkWidget *rdbtn1;
GtkWidget *rdbtn2;
GtkWidget *rdbtn3;
GtkWidget *rdbtn4;

GtkBuilder *builder;
GtkCssProvider *cssProvider;

//flg to indixate current selected language
//1:c 2:c++ 3:java 4:python

int flg=1;

static void loadCss()
{

	

	cssProvider = gtk_css_provider_new();
	gtk_css_provider_load_from_path(cssProvider, "theme.css", NULL);

	gtk_style_context_add_provider_for_screen(
		gdk_screen_get_default(),
		GTK_STYLE_PROVIDER(cssProvider),
		GTK_STYLE_PROVIDER_PRIORITY_USER);
		
}

int main(int argc, char *argv[])
{

	gtk_init(&argc, &argv);

	loadCss();

	builder = gtk_builder_new_from_file("CodeEditor.glade");

	window = GTK_WIDGET(gtk_builder_get_object(builder, "window"));

	gtk_builder_connect_signals(builder, NULL);

	fixed = GTK_WIDGET(gtk_builder_get_object(builder, "fixed1"));
	btnSave = GTK_WIDGET(gtk_builder_get_object(builder, "btn2"));
	textView = GTK_WIDGET(gtk_builder_get_object(builder, "textbox1"));
	label = GTK_WIDGET(gtk_builder_get_object(builder, "label"));
	flNameLabel = GTK_WIDGET(gtk_builder_get_object(builder,"flNameLabel"));
	runBtn = GTK_WIDGET(gtk_builder_get_object(builder,"runBtn"));
	output = GTK_WIDGET(gtk_builder_get_object(builder,"output"));
	error = GTK_WIDGET(gtk_builder_get_object(builder,"error"));
	rdbtn1 = GTK_WIDGET(gtk_builder_get_object(builder,"rdbtn1"));
	rdbtn2 = GTK_WIDGET(gtk_builder_get_object(builder,"rdbtn2"));
	rdbtn3 = GTK_WIDGET(gtk_builder_get_object(builder,"rdbtn3"));
	rdbtn4 = GTK_WIDGET(gtk_builder_get_object(builder,"rdbtn4"));

	gtk_widget_show(window);

	gtk_toggle_button_set_active(rdbtn1,TRUE);

	rdbtn1_activate(rdbtn1);
	rdbtn2_activate(rdbtn2);
	rdbtn3_activate(rdbtn3);
	rdbtn4_activate(rdbtn4);
	
	gtk_main();

	


	return EXIT_SUCCESS;
}

void runCode(GtkButton *b) {
	
	GtkWidget *dialog4;
    GtkTextBuffer *buffer;
    char *filename;
	gchar *contents;
    gsize length;
    FILE *fp;
	GtkTextIter start_iter, end_iter;

    GtkTextBuffer *buffer1;
    char *filename1;
	gchar *contents1;
    gsize length1;
	GError *OutPerror = NULL;
	GtkTextIter start_iter1, end_iter1;

    GtkTextBuffer *buffer2;
    char *filename2;
	gchar *contents2;
    gsize length2;
	GError *OutPerror2 = NULL;
	GtkTextIter start_iter2, end_iter2;


	g_print("FLG:%d\n",flg);

	if(flg == 1)
		filename = "temp.c";
	else if(flg == 2)
		filename = "temp.cpp";
	else if(flg == 3)
		filename = "temp.java";
	else
		filename = "temp.py";

	filename1 = "error.txt";
	filename2 = "output.txt";


		system("touch temp.c");
		system("touch temp.cpp");
		system("touch temp.java");
		system("touch temp.py");
		system("touch error.txt");
		system("touch output.txt");

		//for code section text View
	    buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(textView));
		gtk_text_buffer_get_bounds(buffer, &start_iter, &end_iter);
        contents = gtk_text_buffer_get_text(buffer, &start_iter, &end_iter, FALSE);

		//first saving to temp.c file
		g_file_set_contents(filename, contents, strlen(contents), NULL);

		//for output textview
		buffer2 = gtk_text_view_get_buffer(GTK_TEXT_VIEW(output));
		gtk_text_buffer_get_bounds(buffer2, &start_iter2, &end_iter2);
        contents2 = gtk_text_buffer_get_text(buffer2, &start_iter2, &end_iter2, FALSE);

		//if code is written in 
		if(strlen(contents)) {

			if(flg == 1)
				system("gcc temp.c -o Test 2> error.txt");
			else if(flg == 2)
				system("g++ temp.cpp -o Test 2> error.txt");
			else if(flg == 3)
				system("javac temp.java 2> error.txt");
			else
				system("python3 temp.py 2> error.txt");

			//saving errors in contents if present
			g_file_get_contents(filename1, &contents1, &length1, &OutPerror);

			//if there is error
			if(strlen(contents1)) {

				system("echo " " > output.txt");

			}else {				//there is output

				if(flg == 1 || flg == 2) {
					system("./Test > output.txt");
					system("rm Test");
				}else if(flg == 3) {
					
					system("java Main > output.txt");
				
				}else {

					system("python3 temp.py > output.txt");
				}
				
				system("echo " " > error.txt ");
				
			}

					buffer1 = gtk_text_view_get_buffer(GTK_TEXT_VIEW(error));
					gtk_text_buffer_set_text(buffer1, contents1, -1);
					g_free(contents1);


					g_file_get_contents(filename2, &contents2, &length2, &OutPerror2);
					buffer2 = gtk_text_view_get_buffer(GTK_TEXT_VIEW(output));
					gtk_text_buffer_set_text(buffer2, contents2, -1);
					g_free(contents2);

				
		} 
		else {

				GtkWidget  *error;
				GtkMessageType  type1 = GTK_MESSAGE_ERROR;
				GtkButtonsType  buttons1 = GTK_BUTTONS_CLOSE;

				const gchar *message1 = "Enter code first";		  // for file saved alert box

				error = gtk_message_dialog_new(NULL, GTK_DIALOG_MODAL, type1, buttons1, message1);
				gtk_dialog_run(GTK_DIALOG(error));
				gtk_widget_destroy(error);

			
			}

			system("rm error.txt output.txt temp.c temp.cpp temp.java temp.py");

}

void SeeFile(){

	GtkWidget *dialog3;
	GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
	gint res;

	char *filename, *basename;
	gchar *contents;
	gsize length;
	GError *error = NULL;
	GtkTextBuffer *buffer;

	dialog3 = gtk_file_chooser_dialog_new("Open File",
										  GTK_WINDOW(window),
										  action,
										  "_Cancel",
										  GTK_RESPONSE_CANCEL,
										  "_Open",
										  GTK_RESPONSE_ACCEPT,
										  NULL);

	res = gtk_dialog_run(GTK_DIALOG(dialog3));

	if (res == GTK_RESPONSE_ACCEPT)
	{

		GtkFileChooser *chooser = GTK_FILE_CHOOSER(dialog3);
		filename = gtk_file_chooser_get_filename(chooser);
		basename = g_path_get_basename(filename);


		if (g_file_get_contents(filename, &contents, &length, &error))
		{

			gtk_label_set_label(flNameLabel,basename);

			buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(textView));
			gtk_text_buffer_set_text(buffer, contents, -1);
			g_free(contents);
		}
		else
		{
			GtkWidget *error_dialog;

			error_dialog = gtk_message_dialog_new(GTK_WINDOW(window),
												  GTK_DIALOG_DESTROY_WITH_PARENT,
												  GTK_MESSAGE_ERROR,
												  GTK_BUTTONS_OK,
												  "%s", error->message);

			gtk_dialog_run(GTK_DIALOG(error_dialog));
			gtk_widget_destroy(error_dialog);

			g_error_free(error);
		}

		g_free(filename);
		g_free(basename);
	}

	gtk_widget_destroy(dialog3);
}

void runDialogCallback()
{

	GtkWidget *dialog;
	GtkWidget *label;
	GtkWidget *container;

	gint response;

	dialog = gtk_dialog_new();
	gtk_window_set_transient_for(GTK_WINDOW(dialog), GTK_WINDOW(window));
	gtk_window_set_modal(GTK_WINDOW(dialog), TRUE);
	gtk_window_set_title(GTK_WINDOW(dialog), "About");
	gtk_widget_set_size_request(dialog, 400, 250);

	label = gtk_label_new("\t\tThis Editor is created by Sandesh Marathe..\n\n \tThis code editor is works for c,c++,java and python . \n \tyou can only use hardcoded values cannot take values from user");
	container = gtk_dialog_get_content_area(GTK_DIALOG(dialog));
	gtk_container_add(GTK_CONTAINER(container), label);

	gtk_dialog_add_button(GTK_DIALOG(dialog), "Thank You", 1);

	gtk_widget_show_all(dialog);

	response = gtk_dialog_run(GTK_DIALOG(dialog));
	switch (response)
	{

	case 1: // thank you btn
		gtk_widget_destroy(GTK_WIDGET(dialog));
		break;
	}
}


void saveFile(GtkButton *b)
{
	GtkWidget *dialog4;
    GtkTextBuffer *buffer;
    char *filename;
	gchar *contents;
    gsize length;
    FILE *fp;

	GtkTextIter start_iter, end_iter;

    dialog4 = gtk_file_chooser_dialog_new("Save File",
                                         GTK_WINDOW(window),
                                         GTK_FILE_CHOOSER_ACTION_SAVE,
                                         "_Cancel",
                                         GTK_RESPONSE_CANCEL,
                                         "_Save",
                                         GTK_RESPONSE_ACCEPT,
                                         NULL);

    if (gtk_dialog_run(GTK_DIALOG(dialog4)) == GTK_RESPONSE_ACCEPT)
    {
        filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(dialog4));

        // Get the text view and its associated buffer
        buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(textView));
		gtk_text_buffer_get_bounds(buffer, &start_iter, &end_iter);
        contents = gtk_text_buffer_get_text(buffer, &start_iter, &end_iter, FALSE);

		if (g_file_set_contents(filename, contents, strlen(contents), NULL)) {
			
			GtkWidget  *sucess;
			GtkMessageType  type1 = GTK_MESSAGE_INFO;
			GtkButtonsType  buttons1 = GTK_BUTTONS_CLOSE;
	
			const gchar *message1 = "File Saved Successfully";		  // for file saved alert box
	
			sucess = gtk_message_dialog_new(NULL, GTK_DIALOG_MODAL, type1, buttons1, message1);
			gtk_dialog_run(GTK_DIALOG(sucess));
			gtk_widget_destroy(sucess);
        
		}else{
        
		    g_print("Error saving file.\n");
        
		}

		g_free(contents);
        g_free(filename);
    }

    gtk_widget_destroy(dialog4);

}


void rdbtn1_toggled(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));
	
	if(T) {
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter C Code");
		flg=1;
	}
}


void rdbtn2_toggled(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));
	
	if(T){
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter C++ Code");
		flg=2;
	}
}


void rdbtn3_toggled(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));
	
	if(T){
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter Java Code\n(Write main method only in class named as \"Main\")");
		flg=3;
	}
}


void rdbtn4_toggled(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));	
	
	if(T){
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter Python Code");
		flg=4;
	}
}


void rdbtn1_activate(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));	
	if(T)
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter C Code");
}

void rdbtn2_activate(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));	
	if(T)
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter C++ Code");
}


void rdbtn3_activate(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));	
	if(T)
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter Java Code");
}

void rdbtn4_activate(GtkRadioButton *b) {
	gboolean T = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(b));	
	if(T)
		gtk_label_set_text(GTK_LABEL(label),(const char*)"Enter Python Code");
}
