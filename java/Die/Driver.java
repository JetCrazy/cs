import java.util.Scanner;
/**
 *
 * @author Anthony Siemsen
 * @version 3/14/2019
 */
public class Driver
{
   public static void main() {
       Scanner input = new Scanner(System.in);
       Die die1 = new Die();
       Die die2 = new Die();
       
       die1.roll();
       die2.roll();
       int roll1 = die1.getValue();
       int roll2 = die2.getValue();
       
       System.out.println("The Rolled die was " + (roll1 + roll2));
       
       die1.roll();
       die2.roll();
       roll1 = die1.getValue();
       roll2 = die2.getValue();
       
       System.out.println("The Rolled die was " + (roll1 + roll2));
       
       die1.roll();
       die2.roll();
       roll1 = die1.getValue();
       roll2 = die2.getValue();
       
       System.out.println("The Rolled die was " + (roll1 + roll2));
       die1.roll();
       die2.roll();
       roll1 = die1.getValue();
       roll2 = die2.getValue();
       
       System.out.println("The Rolled die was " + (roll1 + roll2));
       
   }
}
