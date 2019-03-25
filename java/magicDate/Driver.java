import java.util.Scanner;
public class Driver {
	Scanner input = new Scanner(System.in);
	System.out.println("Please enter the Month of your birthday");
	int userMonth = input.nextInt();
	System.out.println("Please enter the day of your birthday");
	int userDay = input.nextInt();
	System.out.println("Please enter the year of your birthday");
	int userYear = input.nextInt();
	
	MagicDate magic = new MagicDate(userMonth, userDay, userYear);
	if (magic.isMagic() == true) {
		System.out.println("You're Birthday is a magic date");
	} else {
		System.out.println("You're Birthday isn't a magic date :(");
	}
}
