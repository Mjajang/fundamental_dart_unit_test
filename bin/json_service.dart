import 'json_model.dart';
import 'package:http/http.dart' as http;

class JsonService {
  final http.Client httpClient;

  JsonService(this.httpClient);

  Future<JsonModel> getPost() async {
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var res = await httpClient.get(uri);

    if (res.statusCode == 200) {
      return JsonModel.fromJson(res.body);
    } else {
      throw Exception('Something went wrong');
    }
  }
}
