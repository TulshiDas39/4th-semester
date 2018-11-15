package Main;

import java.io.IOException;

import tasks.Copy;

public class TestCopy {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Copy cp = new Copy();
		try {
			cp.copyFile("Sir/Sir2.jpg", "TestFolder/sir.jpg");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
