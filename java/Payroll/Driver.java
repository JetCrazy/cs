import java.util.Scanner;
/**
 * Driver Program for Payroll class
 *
 * @author Anthony Siemsen
 * @version 03/15/2019
 */
public class Driver
{
    public static void main() {
        Scanner input = new Scanner(System.in);
        
        // Asks for Employee Name
        System.out.println("Please Enter the Employee Name");
        String name = input.next();
        // Asks for Employee ID
        System.out.println("Please Enter the Employee's ID");
        int id = input.nextInt();
        // asks for hourly pay rate
        System.out.println("Please Enter the Employee's Hourly Pay Rate");
        double rate = input.nextDouble();
        System.out.println("Please Enter the Employee's Hours Worked");
        double worked = input.nextDouble();
        
        Payroll employee = new Payroll(name, id, rate, worked);
        System.out.println("Employee's Name: " + employee.getEmployeeName());
        System.out.println("Employee ID: " + employee.getEmployeeID());
        System.out.println("Employee Hourly Rate: " + employee.getHourRate());
        System.out.println("Employee Hours Worked: " + employee.getHoursWorked());
        System.out.println("Employee's gross pay: " + employee.grossPay());
    }
}
