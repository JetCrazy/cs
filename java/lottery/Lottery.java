import java.util.Random;
/**
 * Write a description of class Lottery here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Lottery
{
    private int[] lotteryNumbers;
    private int[] userNumbers;
    Random random = new Random();
    public Lottery() {
        lotteryNumbers = new int[5];
        generateNumbers();
    }
    
    public static int[] getLotteryNumbers() {
        return lotteryNumbers;
    }
    
    
    
    private void generateNumbers() {
        int temp = 0;
        for(int i = 0; i < lotteryNumbers.length; i++) {
           temp = random.nextInt(9) + 1;
           // Checks if temp is in list
           boolean found = false; // flag 
           for(int j = 0; j < i; j++) { // loops to check each value in the array
               if (temp == lotteryNumbers[i]) { // if the random number generated == to any of the numbers already generated sets flag to false
                   found = true;
               }
           }
           if (!found) { // if found is still == to false, meaning no numbers we're the same then set the new number to the next value in array
                   lotteryNumbers[i] = temp;
               } else {
                   i--; // if a number was the same subtract the iteration counter and restart the loop   
               }
        }
    }
    
    public int compare(int[] userNumbers) {
        int count = 0;
        for(int i = 0; i < lotteryNumbers.length; i++) {
            for(int j = 0; j < userNumbers.length; j++) {
                if(userNumbers[i] == lotteryNumbers[j]) {
                    count++;
                }
        }
    }
    return count;
        
    }
}
