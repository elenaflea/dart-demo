import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/demo_webservice/people.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  Scaffold(
          appBar: AppBar(
            title: Text("DemoLayout"),
          ),
          body:
          //Placeholder()
        FutureBuilder<Response> (
          future: get(Uri.parse("https://swapi.dev/api/people")),
          builder: (context, snapshot) {
              if(snapshot.hasData && snapshot.data?.body != null) {
                final body = snapshot.data!.body;
                Map<String,dynamic> mapResult = jsonDecode(body);
                List<dynamic> listMapPeople = mapResult["results"];
                return ListPeople(
                    listMapPeople.map((p)=>People.fromMap(p)).toList()
                );
              }
              return CircularProgressIndicator();
          }
        )
      ),
    );


  }

}

class ListPeople extends StatelessWidget {
  final List<People> listPeople;
  ListPeople(this.listPeople,{super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listPeople.length,
        itemBuilder: (context, index)=>
            ListTile(
              title: Text(listPeople[index].name),
              subtitle: Text(listPeople[index].birth_year),
            )
    );
  }
}

