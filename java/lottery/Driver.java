import java.util.Scanner;
/**
 * Write a description of class Driver here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Driver
{
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Lottery lottery = new Lottery();
        int[] userNumbers = new int[5];
        
        for(int i = 0; i < userNumbers.length; i++) {
            int temp = 0;
           System.out.printf("Please enter a number 0-9\n");
           temp = input.nextInt();
           // Checks if temp is in list
           boolean found = false; // flag 
           for(int j = 0; j < i; j++) { // loops to check each value in the array
           //System.out.printf("Number %d check %d\n", i, j); TESTING LOOP.
               if (temp == userNumbers[j]) { // if the random number generated == to any of the numbers already generated sets flag to false
                   found = true;
               }
               //System.out.println(found); TESTING LOOP
           }
           if (!found) { // if found is still == to false, meaning no numbers we're the same then set the new number to the next value in array
                   userNumbers[i] = temp;
               } else if(found = true) {
                   System.out.printf("%d was already chosen! You cannot pick the same number.\n", temp);
                   i--; // if a number was the same subtract the iteration counter and restart the loop   
               } else if(temp < 0 || temp > 9) {
                   System.out.printf("%d is not in the range of 0-9\n", temp);
                }   
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
