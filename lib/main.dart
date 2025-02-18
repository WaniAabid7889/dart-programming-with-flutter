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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  final String? text = "Hello Flutter Devs";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
     body: OutlinedButton(
         onPressed: (){
           print("Outlined Button");
         },
         child: Text("Click Here..!"),
     ),
     
    );
  }
}






/*
button visit
 body: TextButton(
        onPressed: (){
          print("Text Button Click");
          },
        child: Text("Click Here.!"),
        onLongPress: (){
          print("LongPressed");
        },
      ),
 body: ElevatedButton(
         onPressed: (){
           print("ElevatedButton");
         },
         child: Text("Click Here..!"),
     ),

text visit
 body: Text(
        "$text",
        style: TextStyle(color: Colors.blueGrey,fontSize: 30,fontFamily: "Arial",fontWeight: FontWeight.bold),
   ),
container visit
 body: Center(
       child: Container(
         width: 150,
         height: 150,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(10),
         ),
         // alignment: Alignment.center,
         child: Center(child: Text(
           "Hello! Aabid",
           style: TextStyle(color: Colors.white,fontSize: 20),
         )),
       ),
     ),

*/