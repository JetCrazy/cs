
/**
 * Write a description of class Driver here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Driver
{
    public static void main() {
        Lotto lotto = new Lotto();
        
        for(int i = 0; i < 1; i++) {
            int[] lottoNumbers = new int[6];
            int[] sorted = new int[6];
            boolean check = false;
            while(check == false) {
                lottoNumbers = lotto.generate();
                boolean sum = lotto.sum(lottoNumbers);
                boolean high = lotto.high(lottoNumbers);
                boolean even = lotto.even(lottoNumbers);
                if(sum == false) continue;
                if(high == false) continue;
                if(even == false) continue;
                check = true;
            }
            
            sorted = lotto.sorter(lottoNumbers);
            System.out.printf("Set %d:", i + 1);
            for(int j = 0; j < sorted.length; i++) {
                 System.out.printf(" %d,", sorted[j]);
            }
            
            
            
        }
    }
}
