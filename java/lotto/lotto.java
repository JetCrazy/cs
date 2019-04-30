import java.util.Random;
/**
 * Write a description of class guessLotto here.
 *
 * @author Anthony
 * @version 04/30/2019
 */
public class guessLotto
{
    public static void main() {
        int[] lotteryNumbers = new int[6];
        Random random = new Random();
        int total = 0;
        while(total < 105 || total > 259) {
        int temp = 0;
        for(int i = 0; i < lotteryNumbers.length; i++) {
           temp = random.nextInt(59) + 1;
           // Checks if temp is in list
           boolean found = false; // flag 
           for(int j = 0; j < i; j++) { // loops to check each value in the array
           //System.out.printf("Number %d check %d\n", i, j); TESTING LOOP.
               if (temp == lotteryNumbers[j]) { // if the random number generated == to any of the numbers already generated sets flag to false
                   found = true;
               }
               //System.out.println(found); TESTING LOOP
           }
           if (!found) { // if found is still == to false, meaning no numbers we're the same then set the new number to the next value in array
                   lotteryNumbers[i] = temp;
               } else {
                   i--; // if a number was the same subtract the iteration counter and restart the loop   
               }
        }
        
        /****************************************************
         * 
         * This adds all numbers in the array
         * 
         ****************************************************/
         int totalTemp = 0;
         for(int i = 0; i < lotteryNumbers.length; i++) {
             totalTemp += lotteryNumbers[i];
         }
         
         total = totalTemp;
       }
       
       /****************************************************
         * 
         * This sorts all numbers in the array
         * 
         ****************************************************/
         int[] newNumbers = new int[6];
         int sortTemp = 1;
         for(int i = 0; i < newNumbers.length; i++) {
             for(int j = 1; j < newNumbers.length - 1; j++) {
                 if(lotteryNumbers[i] < lotteryNumbers[j]) {
                     sortTemp = lotteryNumbers[i];
                     newNumbers[j] = sortTemp;
                     lotteryNumbers[i] = 100;
                 }
             }
         }
         
         
       for(int i = 0; i < lotteryNumbers.length; i++) {
        System.out.println(newNumbers[i]);
    }
    
}
}
