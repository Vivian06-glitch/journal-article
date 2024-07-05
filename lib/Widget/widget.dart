import 'package:flutter/material.dart';

import '../Model/journal_model.dart';
import '../Model/model.dart';

class NewCard extends StatelessWidget {
  final List<Articles> news;

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
                  Image.network(item.urlToImage ?? "https://s.yimg.com/ny/api/res/1.2/uQj_tfsxYeVujWogI77RpQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02MDA-/https://media.zenfs.com/en/the_wall_street_journal_hosted_996/b32f55e6c0d0676cb5213d644f4fb6ef"),
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
  // @override
  // Widget myBuild(BuildContext context) {
  //   return ListView.builder(
  //       itemCount: news.length,
  //       itemBuilder: (context, index) {
  //         var item = news[index];
  //         return Card(
  //             margin: const EdgeInsets.all(8),
  //             child: Column(
  //               children: [
  //                 Image.network(item.urlToImage ?? ""),
  //                 Padding(
  //                     padding: const EdgeInsets.all(8),
  //                     child: Column(
  //                       children: [
  //                         Text(item.title??"")
  //                       ],
  //                     )),
  //                 Padding(
  //                     padding: const EdgeInsets.all(8),
  //                     child: Column(
  //                       children: [Text(item.description ?? "")],
  //                     )),
  //               ],
  //             ));
  //       });
  // }
}
