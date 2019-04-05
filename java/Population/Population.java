/**
 * A Class that predicts the size of population of organisms
 *
 * @author Anthony Siemsen
 * @version 03/25/2019
 */
import java.util.Scanner;
public class Population
{
    private int organisms;
    private double avgIncrease;
    private int days;
    
    public Population() {
        organisms = 0;
        avgIncrease = 0;
        days = 0;
    }
    
    public Population(int orgs, double avg, int day) {
        setOrganisms(orgs);
        setAVG(avg);
        setDays(day);
    }
    
    // Mutator Methods
    public void setOrganisms(int orgs) {
        organisms = orgs;
    }
    
    public void setAVG(double avg) {
        avgIncrease = avg;
    }
    
    public void setDays(int day) {
        days = day;
    }
    
    // Accessor Methods
    public int getOrganisms() {
        return organisms;
    }
    
    public double getAVG() {
        return avgIncrease;
    }
    
    public int getDays() {
        return days;
    }
    
    public double calculate() {
       double total = organisms * avgIncrease;
       total *= days;
       return total;
    }
}
