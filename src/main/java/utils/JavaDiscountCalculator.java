package utils;

public class JavaDiscountCalculator {
    public double calculateDiscount(double amount){
        if (amount>1000) return 0.05*amount;
        else return 0.02*amount;
    }
}
