import 'package:flutter/material.dart';
import 'package:meilisearch/meilisearch.dart';
import 'package:meilisearchpanel/pages/login_page.dart';

void main() async {
  // var client = MeiliSearchClient('http://127.0.0.1:7700', 'MASTER_KEY');
  //
  // // An index is where the documents are stored.
  // var index = client.index('movies');
  //
  // const documents = [
  //   {
  //     'id': 1,
  //     'title': 'Carol',
  //     'genres': ['Romance', 'Drama']
  //   },
  //   {
  //     'id': 2,
  //     'title': 'Wonder Woman',
  //     'genres': ['Action', 'Adventure']
  //   },
  //   {
  //     'id': 3,
  //     'title': 'Life of Pi',
  //     'genres': ['Adventure', 'Drama']
  //   },
  //   {
  //     'id': 4,
  //     'title': 'Mad Max: Fury Road',
  //     'genres': ['Adventure', 'Science Fiction']
  //   },
  //   {
  //     'id': 5,
  //     'title': 'Moana',
  //     'genres': ['Fantasy', 'Action']
  //   },
  //   {
  //     'id': 6,
  //     'title': 'Philadelphia',
  //     'genres': ['Drama']
  //   },
  // ];
  //
  // // If the index 'movies' does not exist, Meilisearch creates it when you first add the documents.
  // var task = await index.addDocuments(documents); // => { "uid": 0 }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


