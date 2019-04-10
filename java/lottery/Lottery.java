import java.util.Random;
public class Lottery {
private int[] lotteryNumbers;
private int[] userNumbers;
Random random = new Random();
public Lottery(int[] userNumbers) {
    lotteryNumbers = new int[5];
    generateNumbers();
    setUserNumbers(userNumbers);
}

public void setUserNumbers(int[] userNumbers) {
    userNumbers = new int[5];
    for(int i = 0; i < this.userNumbers.length; i++) {
        this.userNumbers[i] = userNumbers[i]; 
    }
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
           if (!found) { // if found is still == to false, meaning no numbers we're the same then set the new number to the next value in array
               lotteryNumbers[i] = temp;
           } else {
               i--; // if a number was the same subtract the iteration counter and restart the loop
           }
       }
    }
}

public int compare(int[] userNumbers) {
    int count = 0;
    for(int i = 0; i < lotteryNumbers.length; i++) {
        for(int j = 0; j < userNumbers.length; i++) {
            if(userNumbers[i] == lotteryNumbers[j]) {
                count++;
            }
    }
    return count;
}

    
}
