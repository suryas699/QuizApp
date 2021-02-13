import 'package:QuizApp/NamingPerson.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ResultPage extends StatefulWidget {

   String answer1;
   String answer2;
   String answer3;
   String answer4;
   String answer5;
   String answer6;
   String answer7;
   String answer8;
   ResultPage(this.answer1,this.answer2,this.answer3,this.answer4,this.answer5,this.answer6,this.answer7,this.answer8);
   
   
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  bool isLoading = true;
  String totalMarks = "8";
  int obtainedMarks = 0;
  String personName = Hive.box<String>("PersonName").getAt(0);

  String forQuestion1;
  String forQuestion2;
  String forQuestion3;
  String forQuestion4;
  String forQuestion5;
  String forQuestion6;
  String forQuestion7;
  String forQuestion8;



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance.collection("QuizApp").get().then((value){
      value.docs.forEach((element) {
        if(element.data()["QuestionNumber"] == 1){
           setState(() {
             forQuestion1 = element.data()["Answer"];
           });
        }
        if(element.data()["QuestionNumber"] == 2){
          setState(() {
            forQuestion2 = element.data()["Answer"];
          });
        }
        if(element.data()["QuestionNumber"] == 3){
          setState(() {
            forQuestion3 = element.data()["Answer"];
          });
        }if(element.data()["QuestionNumber"] == 4){
          setState(() {
            forQuestion4 = element.data()["Answer"];
          });
        }
        if(element.data()["QuestionNumber"] == 5){
          setState(() {
            forQuestion5 = element.data()["Answer"];
          });
        }
        if(element.data()["QuestionNumber"] == 6){
          setState(() {
            forQuestion6 = element.data()["Answer"];
          });
        }
        if(element.data()["QuestionNumber"] == 7){
          setState(() {
            forQuestion7 = element.data()["Answer"];
          });
        }
        if(element.data()["QuestionNumber"] == 8){
          setState(() {
            forQuestion8 = element.data()["Answer"];
          });
        }
      });
    });

    if(forQuestion1 == widget.answer1){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }
    if(forQuestion2 == widget.answer2){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }
    if(forQuestion3 == widget.answer3){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });
    }
    if(forQuestion4 == widget.answer4){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }
    if(forQuestion5 == widget.answer5){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }
    if(forQuestion6 == widget.answer6){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }
    if(forQuestion7 == widget.answer7){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }
    if(forQuestion8 == widget.answer8){
      setState(() {
        obtainedMarks = obtainedMarks + 1;
      });

    }



    setState(() {

      isLoading = false;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Result")
      ),
      body:isLoading == true ? Container(
        child: Center(
          child: Column(
            children: [
              Text("Calculating your marks..."),
              CircularProgressIndicator()
            ],
          ),
        ),
      ) : Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi $personName Your Score is",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Text("$obtainedMarks / $totalMarks",style: TextStyle(fontSize: 20),),
              SizedBox(height: 40,),
              FlatButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => NamingPerson()), (route) => false);
              }, child: Text("Restart Game"),color: Colors.orange,)
            ],
          ),
        ),
      ),
    );
  }
}
