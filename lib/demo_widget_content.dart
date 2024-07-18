import 'package:flutter/material.dart';

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
          centerTitle: true,
          title: Text("DemoWidgetContent"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
          children:[
            Text("HELLO!", style: TextStyle(color: Colors.deepOrange)),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwlTb3mDz-FNTvd6E2-7FPLDolhot_06vjNA&s",
                height: 300, width: 300),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index)=> ListTile(
                  //title: Image.network("https://picsum.photos/id/$index/200",
                  leading: Image.network("https://picsum.photos/id/$index/60/60",
                    fit: BoxFit.contain),
                  title: Text("Element numéro $index"
                  ),
                ),
              ),
            ),

          ]

        ),


      ),
    );
  }
}
