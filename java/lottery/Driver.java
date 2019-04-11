import java.util.Scanner;
/**
 * Write a description of class Driver here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Driver
{
    public static void main() {
        Scanner input = new Scanner(System.in);
        int[] userNumbers = new int[5];
        int temp = 0;
        for(int i = 0; i < userNumbers.length; i++) {
            System.out.println("Please enter number 0-9");
            temp = input.nextInt();
            userNumbers[i] = temp;
        }
        
        Lottery lottery = new Lottery();
        System.out.println(lottery.compare(userNumbers));
        System.out.println(lottery.getLotteryNumbers());
        System.out.println("main(): end of program");
    }
}


/*int temp = 0;
        for(int i = 0; i < userNumbers.length; i++) {
            System.out.printf("Please enter a number 0-9\n");
            temp = input.nextInt();
            boolean check = false;
            for(int j = 0; j < i; j++) { // loops to check each value in the array
                if (temp == userNumbers[i]) { // if the random number generated == to any of the numbers already generated sets flag to false
                    check = true;
                }
                if (!check) { // if found is still == to false, meaning no numbers we're the same then set the new number to the next value in array
                    userNumbers[i] = temp;
                } else {
                    i--; // if a number was the same subtract the iteration counter and restart the loop
                }
            }
        } // end of first for loop*/
