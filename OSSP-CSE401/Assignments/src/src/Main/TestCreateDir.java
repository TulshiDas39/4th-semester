package Main;

import java.io.File;
import java.nio.file.Files;

import tasks.Directory;

public class TestCreateDir {
	public static void main(String[] args) {

		Directory dr = new Directory();
		//dr.create("Folder");
		File f = new File("TestFolder");
		dr.create(f);
	}
}
