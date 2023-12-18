import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../bin/json_model.dart';
import '../bin/json_service.dart';
import 'json_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late JsonService jsonService;
  MockClient client = MockClient();

  group(
    'getPost()',
    () {
      setUp(() {
        jsonService = JsonService(client);
      });

      test('return if Successfully', () async {
        when(client
                .get(Uri.parse('https://jsonplaceholder.typicode.com/posts')))
            .thenAnswer((_) async {
          return http.Response(
              '{ "userId": 1, "id": 2, "title": "Wellboy", "body": "man" }',
              200);
        });

        expect(await jsonService.getPost(), isA<JsonModel>());
      });

      test('throws exception on bad request', () {
        when(client
                .get(Uri.parse('https://jsonplaceholder.typicode.com/posts')))
            .thenAnswer((_) async {
          return http.Response('bad request', 404);
        });

        expect(jsonService.getPost(), throwsException);
      });
    },
  );
}
