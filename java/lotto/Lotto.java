import java.util.Random;
/**
 * Write a description of class guessLotto here.
 *
 * @author Anthony
 * @version 04/30/2019
 */
public class Lotto
{
private int[] lotteryNumbers = new int[6];
    public Lotto() {

}
    public int[] generate() {
            Random random = new Random();
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
        return lotteryNumbers;
    }
    
    public boolean sum(int[] num) {
        int sum = 0;
        for(int i = 0; i < num.length; i++) {
            sum += num[i];
        }
        if (sum > 137 || sum < 239) {
           return false;
        }
        return true;
    }
    
    public boolean high(int[] num) {
        int high = 0;
        int low = 0;
        for(int i = 0; i < num.length; i++) {
            if(num[i] <= 30) low++;
            if(num[i] > 31) high++;
        }
        if(high >= 5 || high <= 1) return false;
        return true;
    }
    
    public boolean even(int[] num) {
        int even = 0;
        int odd = 0;
        for(int i = 0; i < num.length; i++) {
            if (num[i] % 2 == 0) odd++;
            else even++;
        }
        if(even >= 5 || even <= 1) return false;
        return true;
    }
    
    public int[] sorter(int[] num) {
       for (int i = 0; i < num.length; i++){
           for(int j = 0; j < num.length; j++) {
                if(num[i] > num[j+1]) {
                    int temp = num[j+1];
                    num[j + 1]= num[i];
                    num[i] = temp;
                }
            }
        }
       return num;
    }
    
    
        
}
