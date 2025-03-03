class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void displayDetails() {
    print('Product: $name, Price: \$${price.toStringAsFixed(2)}');
  }
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print('Added ${product.name} to cart.');
  }

  void displayCart() {
    print('Cart:');
    for (var product in products) {
      product.displayDetails();
    }
  }

  double calculateTotal() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}

class Order {
  String customerName;
  Cart cart;

  Order(this.customerName, this.cart);

  void displayOrder() {
    print('Order for $customerName:');
    cart.displayCart();
    print('Total: \$${cart.calculateTotal().toStringAsFixed(2)}');
  }

  void placeOrder() {
    displayOrder();
    print('Order placed successfully!');
  }
}

void main() {
  Product product1 = Product('Apple Watch', 299.99);
  Product product2 = Product('AirPods', 149.99);
  Product product3 = Product('iPhone 13', 799.99);

  Cart cart = Cart();
  cart.addProduct(product1);
  cart.addProduct(product2);
  cart.addProduct(product3);

  Order order = Order('John Doe', cart);
  order.placeOrder();
}