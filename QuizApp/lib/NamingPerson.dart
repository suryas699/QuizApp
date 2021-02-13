

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'View1.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:io';


class NamingPerson extends StatefulWidget {
  @override
  _NamingPersonState createState() => _NamingPersonState();
}

class _NamingPersonState extends State<NamingPerson> {
 TextEditingController name = TextEditingController();
 simpleMessage(String message){
   return showDialog(context: context,
       builder: (BuildContext context){
         return SimpleDialog(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(message.toString()),
             ),
             TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("OK"))
           ],
         );
       }
   );
 }


 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Hive.box<String>("PersonName").clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body:Container(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Hi , Let's start quizz.Please add your name to proceed further.",style: TextStyle(color:Colors.black),),
                ),
              ),
              SizedBox(height:20),
              TextFormField(


                decoration: InputDecoration(

                    icon: Icon(Icons.person),
                    hintText:"Enter your name"
                ),
                onChanged: (value){
                  this.name.text = value;
                },
              ),
              SizedBox(height:20),
              FlatButton(onPressed: () async {
                try {
                  if(name.text.length != 0){
                    try{
                      final result = await InternetAddress.lookup('google.com');
                      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                        await FirebaseAuth.instance.signInAnonymously();
                        Hive.box<String>("PersonName").add(name.text.toString());
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => View1()), (route) => false);
                      }
                    }on SocketException catch (_) {
                      simpleMessage("No internet connection please try after connecting on internet.");
                    }

                    

                  }else{
                    simpleMessage("Please add your name and continue.");
                  }

                }catch(e){
                  
                  simpleMessage(e.toString());
                }

              }, child: Text("Start Quiz"),color: Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),)
            ],
          )
        ),
      )
    );
  }
}
