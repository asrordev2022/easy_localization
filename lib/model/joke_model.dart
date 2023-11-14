import 'dart:convert';

class Joke {
  String type;
  String setup;
  String punchline;
  int id;

  Joke(
      {required this.type,
      required this.setup,
      required this.punchline,
      required this.id});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
        type: json['type'],
        setup: json['setup'],
        punchline: json['punchline'],
        id: json['id']);
  }
}

Joke fetchData(String str) => Joke.fromJson(jsonDecode(str));
