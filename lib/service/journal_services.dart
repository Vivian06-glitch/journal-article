import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/journal_model.dart';

class JournalServices {
      String token = "67be6db130604ff2adf11936b9779263";
      String baseUrl = "https://newsapi.org/v2";

      Future<List<Articles>> getData() async {
            final response = await http.get(
                  Uri.parse("$baseUrl/everything?domains=wsj.com&apiKey=$token"));
            if(response.statusCode == 200){
                  Map<String,dynamic> json = jsonDecode(response.body);
                  print("Json body is ${json}");
                  List<dynamic> body = json["articles"];
                  print("Body is ${body}");
                  List<Articles> article =
                      body.map((dynamic item) => Articles.fromJson(item)).toList();
                  print("Journal is ${article}");
                  return article;
            } else {
                  throw Exception("Failed to Load data");
            }
      }
}