
/**
 * Payroll Class
 *
 * @author Anthony Siemsen
 * @version 03/15/19
 */
public class Payroll
{
    private String employeeName;
    private int employeeID;
    private double hourRate;
    private double hoursWorked;
    
    public Payroll() {
        employeeName = "Anthony";
        employeeID = 20;
        hourRate = 25.75;
        hoursWorked = 60;
    }
    
    public Payroll(String name, int id, double rate, double worked) {
        setEmployeeName(name);
        setEmployeeID(id);
        setHourRate(rate);
        setHoursWorked(worked);
    }
    // Mutator methods
    public void setEmployeeName(String name) {
        employeeName = name;
    }
    
    public void setEmployeeID(int id) {
        employeeID = id;
    }
    
    public void setHourRate(double rate) {
        hourRate = rate;
    }
    
    public void setHoursWorked(double worked) {
        hoursWorked = worked;
    }
    
    // Accessor Methods
    public String getEmployeeName() {
        return employeeName;
    }
    
    public int getEmployeeID() {
        return employeeID;
    }
    
    public double getHourRate() {
        return hourRate;
    }
    
    public double getHoursWorked() {
        return hoursWorked;
    }
    
    // Calculate gross pay
    
    public double grossPay() {
        double gross = hoursWorked * hourRate;
        return gross;
    }
    
}
