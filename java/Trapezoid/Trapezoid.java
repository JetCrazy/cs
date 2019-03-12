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
public class Trapezoid {

    private double x1;
    private double y1;
    private double x2;
    private double y2;
    private double x3;
    private double y3;
    private double x4;
    private double y4;
    
    public Trapezoid() {
        x1 = -6;
        y1 = 0;
        x2 = 6;
        y2 = 0;
        x3 = 2;
        y3 = 2;
        x4 = -2;
        y4 = 2;
    }
    
    public Trapezoid(double x1c, double y1c, double x2c, double y2c, double x3c, double y3c, double x4c, double y4c) {
        x1 = x1c;
        y1 = y1c;
        x2 = x2c;
        y2 = y2c;
        x3 = x3c;
        y3 = y3c;
        x4 = x4c;
        y4 = y4c;
    }
    
    public void printCords() {
        System.out.println(x1);
        System.out.println(y1);
        System.out.println(x2);
        System.out.println(y2);
        System.out.println(x3);
        System.out.println(y3);
        System.out.println(x4);
        System.out.println(y4);        
    }
    
    public double distance(double dx1, double dy1, double dx2, double dy2) {
        double distance = dx2 - dx1;
        distance = Math.pow(distance, 2);
        double distTemp = dy2 - dy1;
        distTemp = Math.pow(distTemp, 2);
        distance += distTemp;
        distance = Math.sqrt(distance);
        return distance;
    }
    
}
