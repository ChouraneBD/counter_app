import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.teal,
            fontSize: 45,
            fontStyle: FontStyle.italic,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.amberAccent,
          seedColor: Colors.green,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "counter application",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontStyle: FontStyle.italic,
            fontSize: 40,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "la valeur du compteur est 123 ==>$counter",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: counter < 10 ? Colors.amber : Colors.grey,
            onPressed: () {
              if (counter < -10) {
                setState(() {
                  counter--;
                });
              }
            },
          ),
          SizedBox(width: 2),
          FloatingActionButton(
            child: Icon(Icons.remove),
            backgroundColor: counter > -10 ? Colors.red : Colors.grey,
            onPressed: () {
              if (counter > -10) {
                setState(() {
                  counter--;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
