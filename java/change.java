/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cs;
import java.util.Scanner;
/**
 *
 * @author jetcr
 */
public class CS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Welcome to the \"Pennies to Dollars\" Program");
        System.out.println("Please enter the amount of pennies");
        int amount = input.nextInt();
        int dollar = amount / 100; // Get amount of dollars by dividing total pennies by 100
        int temp = 100 * dollar; // Storing the amount of pennies already being used.
        int amountTemp = amount - temp; // subtracting the amount of pennies from pennies used 
        int quarter = amountTemp / 25; // getting amount of quarters from remaining pennies
        temp = quarter * 25;
        amountTemp -= temp;
        int dime = amountTemp / 10;
        temp = dime * 10;
        amountTemp -= temp;
        int nickel = amountTemp / 5;
        temp = nickel * 5;
        amountTemp -= temp;
        int pennies = amountTemp;
        System.out.println("This corresponds too:");
        System.out.print("\tDollars: ");
        System.out.println(dollar);
        System.out.print("\tQuarters: ");
        System.out.println(quarter);
        System.out.print("\tDimes: ");
        System.out.println(dime);
        System.out.print("\tNickel: ");
        System.out.println(nickel);
        System.out.print("\tPennies: ");
        System.out.println(pennies);
        
        
        
    }
    
}
