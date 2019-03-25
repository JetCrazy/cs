import java.util.Scanner;
/**
 * Driver program for Population Class
 *
 * @author Anthony Siemsen
 * @version  03/25/2019
 */
public class Driver
{
   public static void main() {
   Scanner input = new Scanner(System.in);
   System.out.println("Enter the amount of starting organisms");
   int orgs = input.nextInt();
   System.out.println("Enter the Average Increase");
   double avg = input.nextDouble();
   System.out.println("Enter the amount of days");
   int day = input.nextInt();
   
   Population pop = new Population(orgs, avg, day);
   System.out.println(pop.calculate());
}
}
