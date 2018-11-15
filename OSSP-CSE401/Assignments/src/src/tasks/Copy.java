package tasks;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Copy {
	public void copyFile(String sourceFilePath,String destinationFilePath) throws IOException{
		//File source = new File(sourceFile);
		//File dest = new File(destination);
		//
		File sourceFile = new File(sourceFilePath);
		File destinationFile = new File(destinationFilePath);
		//sourceFile.delete();
		FileInputStream fileInputStream = new FileInputStream(sourceFile);
		FileOutputStream fileOutputStream = new FileOutputStream(destinationFile);

		int bufferSize;
		byte[] bufffer = new byte[512];
		try {
			while ((bufferSize = fileInputStream.read(bufffer)) > 0) {
			fileOutputStream.write(bufffer, 0, bufferSize);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		fileInputStream.close();
		fileOutputStream.close();
	}
}
