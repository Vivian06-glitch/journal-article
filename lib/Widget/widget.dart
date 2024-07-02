import 'package:flutter/material.dart';

import '../Model/model.dart';

class NewCard extends StatelessWidget {
  final List<Article> news;

  const NewCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          var item = news[index];
          return Card(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network(item.urlToImage ?? ""),
                   Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(item.title??"")
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [Text(item.description ?? "")],
                      )),
                ],
              ));
        });
  }
}
