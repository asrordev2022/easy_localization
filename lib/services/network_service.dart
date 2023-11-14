import 'package:http/http.dart' as http;
import 'package:dependency_injection/model/joke_model.dart';

abstract class Network {
  Future<Joke> getData();
}

class NetworkImpl implements Network {
  @override
  Future<Joke> getData() async {
    final uri = Uri.parse('https://official-joke-api.appspot.com/random_joke');
    final responce = await http.get(uri);
    return fetchData(responce.body);
  }
}
