
/**
 * Write a description of class car here.
 *
 * @author Anthony Siemsen
 * @version (a version number or a date)
 */
public class Car
{
    private int yearModel;
    private String make;
    private int speed;
    
    public Car() {
        setYearModel(2019);
        setMake("Ford");
        setSpeed(0);
    }
    
    public Car(int inYear, String inMake) {
        setYearModel(inYear);
        setMake(inMake);
        setSpeed(0);
    }
    
    public void setYearModel(int year) {
        yearModel = year;
    }
    
    public void setMake(String carMake) {
        make = carMake;
    }
    
    public void setSpeed(int s) {
        speed = s;
    }
    
    public int getYear() {
       return yearModel;
    }
    
    public String getMake() {
        return make;
    }
    
    public int getSpeed() {
        return speed;
    }
    
    public void accelerate() {
        speed += 5;
    }
    
    public void brake() {
        speed -= 5;
    }
    
    
}
