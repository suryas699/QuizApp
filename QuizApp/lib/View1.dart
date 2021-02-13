
import 'package:QuizApp/ResultPage.dart';
import 'package:QuizApp/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';
import 'dart:io';

class View1 extends StatefulWidget {
  @override
  _View1State createState() => _View1State();
}

class _View1State extends State<View1> {

  String answer1 = "";
  String answer2 = "";
  String answer3 = "";
  String answer4 = "";
  String answer5 = "";
  String answer6 = "";
  String answer7 = "";
  String answer8 = "";

  forOptionOne(String questionNumber){
    if(questionNumber == "1"){
      setState(() {
        answer1 = "Option1";
      });
    }
    if(questionNumber == "2"){
      setState(() {
        answer2 = "Option1";
      });
    }
    if(questionNumber == "3"){
      setState(() {
        answer3 = "Option1";
      });
    }
    if(questionNumber == "4"){
      setState(() {
        answer4 = "Option1";
      });
    }
    if(questionNumber == "5"){
      setState(() {
        answer5 = "Option1";
      });
    }if(questionNumber == "6"){
      setState(() {
        answer6 = "Option1";
      });
    }
    if(questionNumber == "7"){
      setState(() {
        answer7 = "Option1";
      });
    }if(questionNumber == "8"){
      setState(() {
        answer8 = "Option1";
      });
    }

  }
  forOptionTwo(String questionNumber){
    if(questionNumber == "1"){
      setState(() {
        answer1 = "Option2";
      });
    }
    if(questionNumber == "2"){
      setState(() {
        answer2 = "Option2";
      });
    }
    if(questionNumber == "3"){
      setState(() {
        answer3 = "Option2";
      });
    }
    if(questionNumber == "4"){
      setState(() {
        answer4 = "Option2";
      });
    }
    if(questionNumber == "5"){
      setState(() {
        answer5 = "Option2";
      });
    }if(questionNumber == "6"){
      setState(() {
        answer6 = "Option2";
      });
    }
    if(questionNumber == "7"){
      setState(() {
        answer7 = "Option2";
      });
    }if(questionNumber == "8"){
      setState(() {
        answer8 = "Option2";
      });
    }
  }
  forOptionThree(String questionNumber){
    if(questionNumber == "1"){
      setState(() {
        answer1 = "Option3";
      });
    }
    if(questionNumber == "2"){
      setState(() {
        answer2 = "Option3";
      });
    }
    if(questionNumber == "3"){
      setState(() {
        answer3 = "Option3";
      });
    }
    if(questionNumber == "4"){
      setState(() {
        answer4 = "Option3";
      });
    }
    if(questionNumber == "5"){
      setState(() {
        answer5 = "Option3";
      });
    }if(questionNumber == "6"){
      setState(() {
        answer6 = "Option3";
      });
    }
    if(questionNumber == "7"){
      setState(() {
        answer7 = "Option3";
      });
    }if(questionNumber == "8"){
      setState(() {
        answer8 = "Option3";
      });
    }
  }
  forOptionFour(String questionNumber){
    if(questionNumber == "1"){
      setState(() {
        answer1 = "Option4";
      });
    }
    if(questionNumber == "2"){
      setState(() {
        answer2 = "Option4";
      });
    }
    if(questionNumber == "3"){
      setState(() {
        answer3 = "Option4";
      });
    }
    if(questionNumber == "4"){
      setState(() {
        answer4 = "Option4";
      });
    }
    if(questionNumber == "5"){
      setState(() {
        answer5 = "Option4";
      });
    }if(questionNumber == "6"){
      setState(() {
        answer6 = "Option4";
      });
    }
    if(questionNumber == "7"){
      setState(() {
        answer7 = "Option4";
      });
    }
    if(questionNumber == "8"){
      setState(() {
        answer8 = "Option4";
      });
    }
  }

 bool forAnswerOption1(String questionNumber){
    if(questionNumber == "1"){
      if(answer1.isNotEmpty == true){
        if(answer1 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
      if(questionNumber == "2"){
      if(answer2.isNotEmpty == true){
        if(answer2 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "3"){
      if(answer3.isNotEmpty == true){
        if(answer3 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "4"){
      if(answer4.isNotEmpty == true){
        if(answer4 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "5"){
      if(answer5.isNotEmpty == true){
        if(answer5 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "6"){
      if(answer6.isNotEmpty == true){
        if(answer6 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "7"){
      if(answer7.isNotEmpty == true){
        if(answer7 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "8"){
      if(answer8.isNotEmpty == true){
        if(answer8 == "Option1"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else{
      return false;
    }
  }
  bool forAnswerOption2(String questionNumber){
    if(questionNumber == "1"){
      if(answer1.isNotEmpty == true){
        if(answer1 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "2"){
      if(answer2.isNotEmpty == true){
        if(answer2 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "3"){
      if(answer3.isNotEmpty == true){
        if(answer3 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "4"){
      if(answer4.isNotEmpty == true){
        if(answer4 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "5"){
      if(answer5.isNotEmpty == true){
        if(answer5 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "6"){
      if(answer6.isNotEmpty == true){
        if(answer6 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "7"){
      if(answer7.isNotEmpty == true){
        if(answer7 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "8"){
      if(answer8.isNotEmpty == true){
        if(answer8 == "Option2"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else{
      return false;
    }
  }

 bool forAnswerOption3(String questionNumber){
    if(questionNumber == "1"){
      if(answer1.isNotEmpty == true){
        if(answer1 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "2"){
      if(answer2.isNotEmpty == true){
        if(answer2 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "3"){
      if(answer3.isNotEmpty == true){
        if(answer3 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "4"){
      if(answer4.isNotEmpty == true){
        if(answer4 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "5"){
      if(answer5.isNotEmpty == true){
        if(answer5 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "6"){
      if(answer6.isNotEmpty == true){
        if(answer6 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "7"){
      if(answer7.isNotEmpty == true){
        if(answer7 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "8"){
      if(answer8.isNotEmpty == true){
        if(answer8 == "Option3"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else{
      return false;
    }
  }

 bool forAnswerOption4(String questionNumber){
    if(questionNumber == "1"){
      if(answer1.isNotEmpty == true){
        if(answer1 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "2"){
      if(answer2.isNotEmpty == true){
        if(answer2 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "3"){
      if(answer3.isNotEmpty == true){
        if(answer3 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "4"){
      if(answer4.isNotEmpty == true){
        if(answer4 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "5"){
      if(answer5.isNotEmpty == true){
        if(answer5 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "6"){
      if(answer6.isNotEmpty == true){
        if(answer6 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "7"){
      if(answer7.isNotEmpty == true){
        if(answer7 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else
    if(questionNumber == "8"){
      if(answer8.isNotEmpty == true){
        if(answer8 == "Option4"){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else{
      return false;
    }
  }
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuizzBuzz"),
        actions: [
          IconButton(icon: Icon(Icons.send), onPressed: ()async{
            try {
              final result = await InternetAddress.lookup('google.com');
              if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ResultPage(answer1,answer2,answer3,answer4,answer5,answer6,answer7,answer8)), (route) => false);
              }
            } on SocketException catch (_) {
              simpleMessage("No internet connection, please try after connecting to internet.");
            }

          })
        ],
      ),
     body: StreamBuilder(
       stream: FirebaseFirestore.instance.collection("QuizApp").orderBy("QuestionNumber",descending: false).snapshots(),
       builder: (context, snapshot) {
         if(!snapshot.hasData){
           return Container();
         }

         return ListView.builder(
               itemCount: snapshot.data.docs.length,
               itemBuilder: (BuildContext context,int index){
                 DocumentSnapshot snap = snapshot.data.docs[index];
                 return Card(
                   child: Column(
                     children: [
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left:4,right:2),
                             child: Text(snap.data()["QuestionNumber"]),
                           ),
                           Flexible(
                             child: Column(
                               children: [
                                 Text(snap.data()["Question"].toString()),
                               ],
                             ),
                           ),
                         ],
                       ),
                       Column(children: [
                     // for option1
                        Row(children: [

                         IconButton(icon: Icon(Icons.circle),onPressed: () async{


                         forOptionOne(snap.data()["QuestionNumber"]);


                         },color: forAnswerOption1(snap.data()["QuestionNumber"]) == true ? Colors.green : Colors.black12 ,iconSize: 20,),
                         Flexible(child: Text(snap.data()["Option1"]))
                        ],),

                         // for option2
                        Row(children: [
                         IconButton(icon: Icon(Icons.circle),onPressed: ()async{
                           forOptionTwo(snap.data()["QuestionNumber"]);
                         },color:forAnswerOption2(snap.data()["QuestionNumber"]) == true ? Colors.green : Colors.black12,iconSize: 20,),
                         Flexible(child: Text(snap.data()["Option2"]))
                        ],),
                         // for option3
                        Row(children: [
                         IconButton(icon: Icon(Icons.circle),onPressed: ()async{
                          forOptionThree(snap.data()["QuestionNumber"]);
                         },color:forAnswerOption3(snap.data()["QuestionNumber"]) == true ? Colors.green : Colors.black12,iconSize: 20,),
                         Flexible(child: Text(snap.data()["Option3"]))
                        ],),
                         // for option4
                        Row(children: [
                         IconButton(icon: Icon(Icons.circle),onPressed: ()async{
                           forOptionFour(snap.data()["QuestionNumber"]);
                         },color:forAnswerOption4(snap.data()["QuestionNumber"]) == true ? Colors.green : Colors.black12,iconSize: 20,),
                         Flexible(child: Text(snap.data()["Option4"]))
                        ],)
                       ],)
                     ],
                   ),
                 );
           });
         
       }
     ),

    );
  }
}



