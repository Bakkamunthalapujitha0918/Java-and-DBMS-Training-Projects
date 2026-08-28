// 1. Abstraction: Abstract base class
abstract class Person {
    private String name; // 2. Encapsulation: Private variables

    public Person(String name) {
        this.name = name;
    }
    public String getName() { return name; }
    
    // Abstract method to be implemented by subclasses
    public abstract void work();
}

// 3. Inheritance: Employee inherits from Person
class Employee extends Person {
    private int empId;
    private double salary;

    public Employee(int empId, String name, double salary) {
        super(name);
        this.empId = empId;
        this.salary = salary;
    }

    public void displayDetails() {
        System.out.println("ID: " + empId + " | Name: " + getName() + " | Salary: ₹" + salary);
    }

    // 4. Polymorphism: Overriding the abstract method
    @Override
    public void work() {
        System.out.println(getName() + " is managing general software operations.");
    }
}

// Subclass demonstrating further Polymorphism
class Developer extends Employee {
    public Developer(int empId, String name, double salary) {
        super(empId, name, salary);
    }

    @Override
    public void work() {
        System.out.println(getName() + " is writing and debugging code.");
    }
}

public class OopsEmployeeProject {
    public static void main(String[] args) {
        Employee emp = new Employee(101, "Pujitha", 75000);
        Developer dev = new Developer(102, "Anil", 90000);

        System.out.println("--- Employee Records ---");
        emp.displayDetails();
        emp.work();
        
        System.out.println("\n--- Developer Records ---");
        dev.displayDetails();
        dev.work(); // Polymorphic behavior execution
    }
}
