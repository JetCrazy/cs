/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trapezoid;

/**
 *
 * @author jetcr
 */
public class Driver {
    public static void main(String[] args) {
       Trapezoid trap = new Trapezoid();
       System.out.print(trap.distance(-6, 0, 6, 0));
    }
}
