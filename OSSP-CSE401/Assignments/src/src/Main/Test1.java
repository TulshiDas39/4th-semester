package Main;

import java.io.File;

import tasks.Delete;

public class Test1 {
	public static void main(String[] args) {
		File file = new File("Folder/atiq.JPG");
		System.out.println(file.length());
		//file.delete();
		Delete delete = new Delete();
		System.out.println(delete.deleteFile(file.getPath()));
		//System.out.println(file.getPath());
		System.out.println(file.length());

	}
}
