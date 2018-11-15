package assignment03;
import java.util.ArrayList;
import java.util.Scanner;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ExecuteShellComand {
    
	public static void main(String[] args) {
		ArrayList<String> commandHystory = new ArrayList<String>();
		ExecuteShellComand obj = new ExecuteShellComand();

		/*String domainName = "google.com";

		//in mac oxs
		String command = "ping -c 3 " + domainName;
*/
		//in windows
		//String command = "ping -n 3 " + domainName;
		System.out.println("Your hystory is empty , First run some command\n then enter the serial no. from back to run the certain command ");
		Scanner input =  new Scanner(System.in);
		while(true){
			System.out.println("Enter command or number of last command to run and q to exit");

			String command = input.nextLine();
			if(command.equals("q") || command.equals("Q")) break;
			//if("324".c)
			//String command = "!-"+commandNo ;
			commandHystory.add(command);
			//commandHystory.get(commandHystory.size()-)
			String output = obj.executeCommand(command);

			System.out.println(output);
		}
		input.close();

	}

	private String executeCommand(String command) {

		StringBuffer output = new StringBuffer();

		Process p;
		try {
			p = Runtime.getRuntime().exec(command);
			p.waitFor();
			BufferedReader reader =
                            new BufferedReader(new InputStreamReader(p.getInputStream()));

                        String line = "";
			while ((line = reader.readLine())!= null) {
				output.append(line + "\n");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return output.toString();

	}

}