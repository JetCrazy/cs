import java.util.Scanner;
/**
 * Write a description of class Driver here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Main
{
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Lottery lottery = new Lottery();
        int[] userNumbers = new int[5];
        int temp = 0;
        for(int i = 0; i < userNumbers.length; i++) {
            System.out.println("Please enter number 0-9");
            temp = input.nextInt();
            boolean checker = lottery.checker(temp)
            userNumbers[i] = temp;
        }
        
        int compare = lottery.compare(userNumbers);
        for (int i = 0; i < userNumbers.length; i++) {
        System.out.printf("Lottery Number %d is: %d \n", i + 1, lottery.getLotteryNumbers()[i]);
        }
        // If compare returns 5 then they have won the lottery
        if(compare == 5) {
          System.out.printf("Congrats! You have won the lottery. All %d numbers were a match!\n", compare);
        } else {
          System.out.printf("Sorry, only %d numbers were a match\n", compare);
        }
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
