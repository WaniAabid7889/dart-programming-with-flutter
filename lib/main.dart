import 'package:flutter/material.dart';




void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Navbar'),
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
  Widget build(BuildContext context) {

  return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
               width: 50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("Padding vs Margin"),
                margin: EdgeInsets.all(11),
                width: 50,
                height: 100,
                color: Colors.blueGrey,
              ),
            ),
          )
        ],

      ),
    );
  }
}





/*



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
