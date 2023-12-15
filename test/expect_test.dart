import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) {
  return "Hello $name";
}

void main() {
  test(
    "Test sayHello()",
    () {
      final response = sayHello("Jajang");

      expect(response, "Hello Jajang");
    },
  );
}
