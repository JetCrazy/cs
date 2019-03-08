import java.util.Scanner;
public class interest {
	public static void main() {
		Scanner input = new Scanner(System.in);
		System.out.println("Welcome to the \"Calculate Interest\" Program");
		System.out.println("Please enter your balance and interest rate");
		int balance = input.nextInt();
		int rate = input.nextInt();
		double interest = rate / 1200;
		interest *= balance;
		System.out.print("The interest you can expect to earn is: " + interest);
		
	}
}
