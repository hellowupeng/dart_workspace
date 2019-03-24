/// Methods

/// Getters and Setters
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + right;
  set bottom(num value) => top = value - height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}

/// Abstract methods
abstract class Doer {
  void doSomething(); // abstract method.
}

class EffectiveDoer extends Doer {
  @override
  void doSomething() {
    // TODO: implement doSomething
  }
}

/// Abstract classes

abstract class AbstractContainer {
  void updateChildren();
}

/// Implicit interfaces

class Person {
  final _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name';
}

class Imposter implements Person {
  @override
  // TODO: implement _name
  get _name => '';

  @override
  String greet(String who) {
    // TODO: implement greet
    return 'Hi $who. Do you know who I am?';
  }
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Imposter()));
}

class Point implements Comparable, Location {}

/// Extending a class

class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
}

/// Overriding members
class SmartTelevision extends Television {
  @override
  void turnOn() {}
}

/// Overriding Operators
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
}

void main(List<String> args) {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
