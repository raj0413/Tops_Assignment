
class Vehicle {
  String fuelType;
  int maxSpeed;

  Vehicle(this.fuelType, this.maxSpeed);

  void displayDetails() {
    print('Fuel Type: $fuelType');
    print('Max Speed: $maxSpeed km/h');
  }
}

class Car extends Vehicle {
  String carType;

  Car(String fuelType, int maxSpeed, this.carType) : super(fuelType, maxSpeed);

  void displayDetails() {
    print('Car Type: $carType');
    super.displayDetails();
  }
}

class Bike extends Vehicle {
  String bikeType;

  Bike(String fuelType, int maxSpeed, this.bikeType) : super(fuelType, maxSpeed);

  void displayDetails() {
    print('Bike Type: $bikeType');
    super.displayDetails();
  }
}

void main() {
  Car myCar = Car('Petrol', 220, 'Sedan');
  print('Car Details:');
  myCar.displayDetails();
  
  print('---------------------');
  
  Bike myBike = Bike('Electric', 120, 'Mountain');
  print('Bike Details:');
  myBike.displayDetails();
}