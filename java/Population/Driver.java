import java.util.Scanner;
/**
 * Driver program for Population Class
 *
 * @author Anthony Siemsen
 * @version  03/25/2019
 */
public class Driver
{
   Scanner input = new Scanner(System.in);
		   System.out.println("Enter the amount of starting organisms");
		   int orgs = input.nextInt();
		   while (orgs < 2) {
	            System.out.println("Please Enter a valid number amount of Organisms");
	            orgs = input.nextInt();
	        }
		   System.out.println("Enter the Average Increase");
		   double avg = input.nextDouble();
		   while (avg < 0) {
	            System.out.println("Please Enter a valid AVG");
	            avg = input.nextInt();
	        }
		   System.out.println("Enter the amount of days");
		   int day = input.nextInt();
		   while (day < 1) {
	            System.out.println("Please Enter a valid number amount of Days");
	            day = input.nextInt();
	        }
		   
		   Population pop = new Population(orgs, avg, day);
		   System.out.println(pop.calculate());
		}
}
