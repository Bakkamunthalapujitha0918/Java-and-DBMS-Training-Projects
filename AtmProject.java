import java.util.Scanner;

public class AtmProject {
    public static void main(String[] args) {
        double balance = 5000.00;
        Scanner sc = new Scanner(System.in);
        
        while (true) {
            System.out.println("\n--- ATM Menu ---");
            System.out.println("1. Check Balance");
            System.out.println("2. Deposit Money");
            System.out.println("3. Withdraw Money");
            System.out.println("4. Exit");
            System.out.print("Choose an option: ");
            int choice = sc.nextInt();
            
            switch (choice) {
                case 1:
                    System.out.println("Current Balance: ₹" + balance);
                    break;
                case 2:
                    System.out.print("Enter deposit amount: ₹");
                    double deposit = sc.nextDouble();
                    if (deposit > 0) {
                        balance += deposit;
                        System.out.println("Successfully deposited ₹" + deposit);
                    } else {
                        System.out.println("Invalid amount!");
                    }
                    break;
                case 3:
                    System.out.print("Enter withdrawal amount: ₹");
                    double withdraw = sc.nextDouble();
                    if (withdraw > balance) {
                        System.out.println("Insufficient balance!");
                    } else if (withdraw <= 0) {
                        System.out.println("Invalid amount!");
                    } else {
                        balance -= withdraw;
                        System.out.println("Successfully withdrew ₹" + withdraw);
                    }
                    break;
                case 4:
                    System.out.println("Thank you for using the ATM!");
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}
