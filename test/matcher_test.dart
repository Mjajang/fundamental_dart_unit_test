import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) {
  return "Hello $name";
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test(
    "Test sayHello() with matcher",
    () {
      expect(sayHello("Jajang"), equals("Hello Jajang"));
      expect(sayHello("Jajang"), startsWith("Hello"));
      expect(sayHello("Jajang"), endsWith("Jajang"));
      expect(sayHello("Jajang"), equalsIgnoringCase("hello jajang"));
      expect(sayHello("Jajang"), isA<String>());
    },
  );

  test(
    "Test sum() with matcher",
    () {
      expect(sum(1, 1), equals(2));
      expect(sum(1, 1), greaterThan(1));
      expect(sum(1, 1), lessThan(10));
    },
  );
}
