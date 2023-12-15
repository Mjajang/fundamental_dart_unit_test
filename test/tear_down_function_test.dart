import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "Jajang";

  setUp(
    () {
      data = "Jajang";
      print(data);
    },
  );

  tearDown(
    () {
      print(data);
    },
  );

  group(
    "Tear down function String test",
    () {
      test(
        "String first",
        () {
          // data = "Jajang";
          data = "$data Mahrul";

          expect(data, equals("Jajang Mahrul"));
        },
      );

      test(
        "String second",
        () {
          // data = "Jajang";
          data = "$data Jajang";

          expect(data, equals("Jajang Jajang"));
        },
      );
    },
  );
}
