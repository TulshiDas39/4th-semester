package Main;

import java.io.File;

import tasks.FileOpen;

public class TestOpen {
	public static void main(String[] args) {
		//File file1 = new File("Folder/song.mp4");
		//File file2 = new File("Folder/atiq.JPG");
		File file3 = new File("Sir/Sir2.jpg");


		FileOpen fo = new FileOpen();
		fo.fileOpen(file3);
		//fo.fileOpen(file2.getPath());
		//System.out.println(file2.exists());
	}
}
