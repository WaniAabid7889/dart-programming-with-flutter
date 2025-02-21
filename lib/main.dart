import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize:16, fontFamily:'Montserrat', color: Colors.black),
          headlineSmall: TextStyle(fontSize: 12, fontFamily:'Montserrat', color: Colors.blue),
        )
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home Page "),
      ),
     body: Padding(
       padding: const EdgeInsets.all(10),
       child: Center(child: Card(
            elevation: 4,
           shadowColor: Colors.black38,
           child: Text('hello Aabid',style: TextStyle(fontSize: 20),))),
     ) ,
    );
  }
}






/*
Card widget


Customer Style
 body: Column(
          children: [
            Text('Contact',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.blueGrey),),
            Text('leads',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.green),),
            Text('create new leads',style: Theme.of(context).textTheme.headlineSmall),
            // Text('Check our UI is working or not', style: mTextStyle13(),)
          ]
      ),

//Circleavatar widget

body: Center(
          child: CircleAvatar(
            // child: Text('Name',style: TextStyle(color: Colors.blue,fontSize: 12),),
            child: Column(
              children: [
                Container(
                    width: 100,
                    height: 130,
                    child: Image.asset('assets/images/boy.jpg'),
                ),
                Text('Name',style: TextStyle(color: Colors.green,fontSize: 14),),
              ],
            ),
            // backgroundImage: AssetImage('assets/images/boy.jpg'),
            backgroundColor: Colors.blue,
            // radius: 100,
            // minRadius: 10,
            maxRadius: 100,
        ),
      ),
// ListView.separated

var arrNames = ['Abid','Hssain','Sahil','Nazil','Farddin','Amir','Ali','Rohit','Anayat','Anaya'];
body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add),
        );
      },
        itemCount: arrNames.length,
        separatorBuilder: (context,index){
          return Divider(height: 50,thickness: 1);
        },
      )

 body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            //  borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.green,
                  spreadRadius: 11,
                )
              ],
              shape: BoxShape.circle

            ),
          ),
        ),
      ),

ListView.separated
  var arrNames = ['Abid','Hssain','Sahil','Nazil','Farddin','Amir','Ali','Rohit','Anayat','Anaya'];

body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(itemBuilder: (context,index){
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,),),
                  ),
                ],
              );
            },
              itemCount: arrNames.length,
              separatorBuilder: (context,index){
                return Divider(height: 20,thickness: 4,);
              },
            ),
          ),
        ),

listView.separated

child: ListView.separated(itemBuilder: (context,index){
              return Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,),);
            },
              itemCount: arrNames.length,
              separatorBuilder: (context,index){
                  return Divider(height: 20,thickness: 4,);
              },
            ),

listView.Builder

child: ListView.builder(itemBuilder: (context,index){
              return Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,),);
            },
              itemCount: arrNames.length,
              itemExtent: 200,
              scrollDirection: Axis.horizontal,
            ),


ListView widgets
child: ListView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('One',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Two',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Three',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Four',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
ScrollView Widgets
 body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                          margin: EdgeInsets.only(right: 11),

                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.yellow,
                          margin: EdgeInsets.only(right: 11),
                        ),Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                          margin: EdgeInsets.only(right: 11),
                        ),Container(
                          height: 200,
                          width: 200,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 11),
                        ),Container(
                          height: 200,
                          width: 200,
                          color: Colors.blueGrey,
                          margin: EdgeInsets.only(right: 11),
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.pink,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(bottom: 11),
                )
              ],
            ),
          ),
      ),

InkWell widget

body: Center(
      child: InkWell(
        onTap: (){
          print("tapped on container");
        },
        onLongPress: (){
          print("long pressed on container");
        },
        onDoubleTap: (){
          print("double tap in container");
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Center(
               child: InkWell(
                 onTap: (){
                   print("text widget tapped");
                 },
                child:Text("Click here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
          ),
        ),
      ),

    ),

Row Columns Widget 
 body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         Text('Choice your product ',
           style: TextStyle(fontSize: 18,backgroundColor: Colors.blue,height: 3),
         ),
         OutlinedButton(
             onPressed: (){print("welcome to grid system");},
             child: Text("click here")
         ),

       ],
     )


images widget
  body: Center(
  child: Image.asset('assets/images/images.jpg'),
  ),
button widget
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
     
     
  body: OutlinedButton(
         onPressed: (){
           print("Outlined Button");
         },
         child: Text("Click Here..!"),
     ),

text widget
 body: Text(
        "$text",
        style: TextStyle(color: Colors.blueGrey,fontSize: 30,fontFamily: "Arial",fontWeight: FontWeight.bold),
   ),
container widget
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
