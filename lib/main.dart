import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';
// import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Student Form"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: (){
                setState(() {
                  time = DateTime.now();
                });
              }, child: Text('Current Time'))
            ],
          ),
        ),
      ),
    );
  }
}

//  Future<void> pickImage() async {
//     // final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
//     final pickedFile = Image.asset('assets/images/boy.jpg');
//     // if (pickedFile != null) {
//     //   setState(() {
//     //     _image = File(pickedFile);
//     //   });
//     // }
//   }
//   body: Center(
//   child: Container(
//   width: 300,
//   child: SingleChildScrollView(
//   child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//   buildTextField(userName, 'Enter user name', Icons.supervised_user_circle, TextInputType.text),
//   buildTextField(emailText, 'Enter user email', Icons.email, TextInputType.emailAddress),
//   buildPasswordField(),
//   buildTextField(userAge, 'Enter Age', Icons.calendar_today, TextInputType.number),
//   buildTextField(userPhone, 'Enter Phone No.', Icons.phone, TextInputType.phone),
//   Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: DropdownButtonFormField<String>(
//   value: selectedGender,
//   decoration: InputDecoration(
//   labelText: 'Select Gender',
//   border: OutlineInputBorder(
//   borderRadius: BorderRadius.circular(11),
//   ),
//   ),
//   items: ['male', 'female', 'others'].map((gender) {
//   return DropdownMenuItem<String>(
//   value: gender,
//   child: Text(gender),
//   );
//   }).toList(),
//   onChanged: (value) {
//   setState(() {
//   selectedGender = value;
//   });
//   },
//   ),
//   ),
//   buildTextField(userDOB, 'Enter DOB', Icons.calendar_today, TextInputType.datetime),
//   buildAddressField(),
//   buildImagePicker(),
//   Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Container(
//   width: 300,
//   alignment: Alignment.bottomRight,
//   child: ElevatedButton(
//   onPressed: () {
//   submitForm();
//   },
//   child: Text('Submit', style: TextStyle(color: Colors.black, fontSize: 16)),
//   ),
//   ),
//   ),
//   ],
//   ),
//   ),
//   ),
//   ),
//
//   Widget buildTextField(TextEditingController controller, String hintText, IconData icon, TextInputType keyboardType) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextField(
//         controller: controller,
//         keyboardType: keyboardType,
//         decoration: InputDecoration(
//           hintText: hintText,
//           prefixIcon: Icon(icon),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(11),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildAddressField() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextField(
//         controller: userAddress,
//         keyboardType: TextInputType.multiline,
//         maxLines: 3,
//         decoration: InputDecoration(
//           hintText: 'Enter your address',
//           prefixIcon: Icon(Icons.home),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(11),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildImagePicker() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           ElevatedButton(
//             onPressed: pickImage,
//             child: Text('Pick Image'),
//           ),
//           _image != null
//               ? Image.file(
//             _image!,
//             height: 100,
//           )
//               : Text('No image selected'),
//         ],
//       ),
//     );
//   }
//
//   Widget buildPasswordField() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextField(
//         controller: passwordText,
//         obscureText: true,
//         obscuringCharacter: '*',
//         decoration: InputDecoration(
//           hintText: 'Enter a password',
//           prefixIcon: Icon(Icons.password),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(11),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void submitForm() {
//     String uName = userName.text;
//     String uEmail = emailText.text;
//     String uPass = passwordText.text;
//     String uAge = userAge.text;
//     String uPhone = userPhone.text;
//     String uDOB = userDOB.text;
//     String uAddress = userAddress.text;
//     print("Name: $uName");
//     print("Email: $uEmail");
//     print("Password: $uPass");
//     print("Age: $uAge");
//     print("Phone: $uPhone");
//     print("Gender: ${selectedGender ?? 'Not selected'}");
//     print("DOB: $uDOB");
//     print("Address: $uAddress");
//     print("Image: ${_image?.path ?? 'No image selected'}");
//   }
// }
//
//
//


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FlutterApp',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() {
//     return _MyHomePageState();
//   }
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var emailText = TextEditingController();
//   var passwordText = TextEditingController();
//   var userName = TextEditingController();
//   var userAge = TextEditingController();
//   var userPhone = TextEditingController();
//   var userGender = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Student Form"),
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   keyboardType:TextInputType.text,
//                   controller: userName,
//                   decoration: InputDecoration(
//                     hintText: 'Enter user name',
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                          color: Colors.orange,
//                          width: 2
//                       )
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.red,
//                         width: 2
//                       )
//                     ),
//                     disabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                         width: 2
//                       )
//                     ),
//                     prefixIcon: Icon(Icons.supervised_user_circle),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   keyboardType: TextInputType.text,
//                   controller: emailText,
//                   decoration: InputDecoration(
//                     hintText: 'Enter user email',
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                         width: 2
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.red,
//                         width: 2
//                       ),
//                     ),
//                     prefixIcon: Icon(Icons.email)
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: passwordText,
//                   keyboardType: TextInputType.text,
//                   obscureText: true,
//                   obscuringCharacter: '*',
//                   decoration: InputDecoration(
//                     hintText: 'Enter a password',
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(11),
//                         borderSide: BorderSide(
//                           color: Colors.orange,
//                           width: 2
//                         )
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.red,
//                         width: 2
//                       )
//                     ),
//                     prefixIcon: Icon(Icons.password),
//                     // suffixIcon: Icon(Icons.remove_red_eye_outlined)
//                     suffixIcon: IconButton(onPressed: (){
//                       print("Hide/Show password");
//                     }, icon: Icon(Icons.remove_red_eye_outlined)),
//                   ),
//
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: userAge,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.red,
//                         width: 2
//                       )
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                         width: 2
//                       )
//                     ),
//                     prefixIcon: Icon(Icons.supervised_user_circle),
//                     hintText: 'Enter a Age'
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   keyboardType: TextInputType.number,
//                   controller: userPhone,
//                   decoration: InputDecoration(
//                     hintText: 'Enter a Phone No.',
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                         width: 2
//                       )
//                     ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(11),
//                         borderSide: BorderSide(
//                           color: Colors.red,
//                           width: 2
//                         )
//                       ) ,
//                     prefixIcon: Icon(Icons.phone)
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     DropdownButton(
//                       decoration: InputDecoration(
//                         labelText: 'Select Gender',
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(
//                             color: Colors.orange,
//                             width: 2
//                           )
// ,                        ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(
//                             color: Colors.red,
//                             width: 2
//                           ),
//                         ),
//                         value:'selectedGender',
//                         items:['male','female','others'].map((element){
//                           return DropdownMenuItem<String>(
//                             value: userGender,
//                             child: Text(userGender),
//                           );
//                         })
//
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: 300,
//                   alignment: Alignment.bottomRight,
//                   child: ElevatedButton(onPressed: (){
//                     String uName  = userName.text.toString();
//                     String uEmail = emailText.text.toString();
//                     String uPass  = passwordText.text.toString();
//                     String uAge = userAge.text.toString();
//                     String uPhone = userPhone.text.toString();
//                     // print("Name : $uName");
//                   }, child: Text('submit',style: TextStyle(color: Colors.black,fontSize: 16),)),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
TextField widget

 body: Center(
          child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.text,
                    controller: emailText,
                    decoration: InputDecoration(
                      hintText: 'Enter a Email',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2
                        )
                      ) ,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.redAccent
                        )
                      ),
                      // suffixText: "User Email..!",
                      // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                      prefixIcon: Icon(Icons.email,color: Colors.orange,)
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: passwordText,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                             hintText: 'Enter a Password',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                    color: Colors.deepOrange,
                                    width: 2
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blue
                            )
                          ),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            prefixIcon: Icon(Icons.password)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        String uEmail = emailText.text.toString();
                        String uPass = passwordText.text.toString();
                        print("Email : $uEmail, Password : $uPass");
                      }, child:Text('login',style: TextStyle(color: Colors.black),),

                      ),
                    )
                  ],
                )
          ),
      ),

Card widget
body: Padding(
       padding: const EdgeInsets.all(10),
       child: Center(child: Card(
            elevation: 4,
           shadowColor: Colors.black38,
           child: Text('hello Aabid',style: TextStyle(fontSize: 20),))),
     ) ,

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
