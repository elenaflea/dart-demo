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
          title: Text("DemoLayout"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Icon(
                color: Colors.deepOrangeAccent,
                size: 60,
                Icons.account_circle),
            Text("hello world"),
            OutlinedButton.icon(
              icon: Icon(Icons.access_alarm),
                onPressed: (){},
               // child: Text("hello Click me!")
                label: Text("hello Click me!")
            ),
          TextButton.icon(
          icon: Icon(Icons.access_alarm),
          onPressed: (){},
          label: Text("hello Click me!")
    ),
            FilledButton.icon(
                icon: Icon(Icons.access_alarm),
                onPressed: (){},
                label: Text("hello Click me!")
            ),
            ElevatedButton.icon(
                icon: Icon(Icons.access_alarm),
                onPressed: (){},
                label: Text("hello Click me!")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add),
                  Icon(Icons.remove),
                  Icon(Icons.edit),
                ],),
            )
          ],
        ),


      ),
    );
  }
}
 