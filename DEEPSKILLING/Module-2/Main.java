package ecommerce;

public class Main {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", 55000),
                new Product(102, "Mouse", 800),
                new Product(103, "Keyboard", 1500),
                new Product(104, "Monitor", 12000),
                new Product(105, "Printer", 7000)
        };

        Product p = Search.linearSearch(products, 103);

        if (p != null)
            System.out.println("Linear Search: " + p.name + " - ₹" + p.price);
        else
            System.out.println("Product not found");

        Product p2 = Search.binarySearch(products, 104);

        if (p2 != null)
            System.out.println("Binary Search: " + p2.name + " - ₹" + p2.price);
        else
            System.out.println("Product not found");
    }
}
