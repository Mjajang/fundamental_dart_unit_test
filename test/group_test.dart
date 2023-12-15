import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int sum(int a, int b) {
  return a + b;
}

void main() {
  group(
    "Test sum() group",
    () {
      test(
        "Positive",
        () {
          expect(sum(1, 2), equals(3));
        },
      );
      test(
        "Negative",
        () {
          expect(sum(10, -5), equals(5));
        },
      );

      group(
        "Test sum() group in group",
        () {
          test(
            "Genap",
            () {
              expect(sum(10, 10), equals(20));
            },
          );
        },
      );
    },
  );
}
