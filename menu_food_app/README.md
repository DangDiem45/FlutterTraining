# Menu Food App

## What is SOLID?

SOLID is an acronym for five core principles of object-oriented design. Following these principles helps you write:

- Clean code
- Maintainable and scalable software
- Testable and loosely-coupled systems

1. Single Responsibility Principle (SRP)
   A class should have only one reason to change.

Bad Example:

```bash
class Report {
  void generateReport() { ... }
  void saveToFile() { ... } // Handles I/O — not its job
}
```

Good:

```bash
class Report {
void generate() { ... }
}

class FileSaver {
void saveToFile(String data) { ... }

}
```

2. Open/Closed Principle (OCP)
   Software entities should be open for extension but closed for modification.
   You should be able to add new features without changing existing code.

Example:

```bash
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double area() => ...;
}

class Square extends Shape {
  double area() => ...;
}
```

3. Liskov Substitution Principle (LSP)
   Subtypes must be substitutable for their base types.

Bad:

```bash
class Bird {
void fly() { ... }
}

class Ostrich extends Bird {
void fly() => throw Exception(); // Can't fly!
}
```

Better:

```bash
abstract class Bird {}
abstract class FlyingBird extends Bird {
  void fly();
}
```

4. Interface Segregation Principle (ISP)
   Clients should not be forced to depend on interfaces they don’t use.

Bad:

```bash
abstract class Worker {
void work();
void eat(); // Not every worker eats in this context
}
```

Better:

```bash
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}
```

5. Dependency Inversion Principle (DIP)
   Depend on abstractions, not concrete implementations.

Bad

```bash
class MySQLDatabase {
void connect() { ... }
}

class UserService {
final db = MySQLDatabase(); // Hard-coded
}
```

Good:

```bash
abstract class Database {
  void connect();
}

class MySQLDatabase implements Database {
  void connect() { ... }
}

class UserService {
  final Database db;
  UserService(this.db); // Dependency injected
}


```
