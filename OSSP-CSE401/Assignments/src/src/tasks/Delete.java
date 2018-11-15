package tasks;

import java.io.File;

public class Delete {
	public boolean deleteFile(String filePath) {

		try {
			File file = new File(filePath);
			file.delete();
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean deleteFile(File file) {

		try {
			file.delete();
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
