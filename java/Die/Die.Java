import java.util.Random;
/**
 *
 * @author Anthony Siemsen
 * @version 3/4/2019
 */
public class Die
{
    Random r = new Random();
    private int value;
    
    public Die() {
        value = 1;
    }
    
    public Die(int v){
        setValue(v);
    }
    
    public int getValue() {
        return value;
    }
    
    public void setValue(int v) {
        value = v;
    }
    
    public void roll() {
        value = r.nextInt(6) + 1;
    }
}
