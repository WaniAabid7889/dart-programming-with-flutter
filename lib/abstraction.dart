abstract class Shape {
  void draw(); // Abstract method
}

class Circle extends Shape {
  void draw() {
    print("Drawing a Circle");
  }
}

void main() {
  Circle circle = Circle();
  circle.draw();
}
