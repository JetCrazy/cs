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
        System.out.println("Please Enter the Model Year");
        int getModel = input.nextInt();
        System.out.println("Please enter the car's make");
        String getMake = input.next();
        Car car1 = new Car(getModel, getMake);
        System.out.println("The Car is a " + car1.getYear() + " " + car1.getMake());
        car1.accelerate();
        System.out.println(car1.getSpeed());
        car1.accelerate();
        System.out.println(car1.getSpeed());
        car1.accelerate();
        System.out.println(car1.getSpeed());
        car1.accelerate();
        System.out.println(car1.getSpeed());
        car1.accelerate();
        System.out.println(car1.getSpeed());
        
        car1.brake();
        System.out.println(car1.getSpeed());
        car1.brake();
        System.out.println(car1.getSpeed());
        car1.brake();
        System.out.println(car1.getSpeed());
        car1.brake();
        System.out.println(car1.getSpeed());
        car1.brake();
        System.out.println(car1.getSpeed());
    }
}
