// Abstract class Vehicle
abstract class Vehicle {
  int speed = 0;
  void setSpeed(int speed) {
    this.speed = speed;
  }

  void move();
}

// Subclass Car
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $speed km/h");
  }
}

// Main function
void main() {
  Car myCar = Car();
  myCar.setSpeed(100);
  myCar.move();
}
