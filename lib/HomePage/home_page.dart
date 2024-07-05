// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'package:news_app/Widget/widget.dart';

import '../Model/journal_model.dart';
import '../Model/model.dart';
import '../service/journal_services.dart';
import '../service/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Articles>> futureArticles;

  // @override
  // void initState(){
  //   super.initState();
  //   futureArticles = NewService().getData();
  // }

  @override
  void initState(){
    super.initState();
    futureArticles = JournalServices().getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Articles"),),
      body: FutureBuilder(future: futureArticles, builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasError){
          return Center(child: Text("Error is === : ${snapshot.error}"),);

          } else if(!snapshot.hasData || snapshot.data!.isEmpty){
          return const Center(child: Text("No articles"),);
          }else {return NewCard(news: snapshot.data!,);}

      })
    );
  }
}
