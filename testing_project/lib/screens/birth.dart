import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/framework.dart';

/*class _birth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Birth();
  }

}*/


class Birth extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _State();
  }

}

class _State extends State<Birth>{
  String initValue="Select your Birth Date";
bool isDateSelected= false;
DateTime birthDate; // instance of DateTime
String birthDateInString;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GestureDetector(
   child: new Icon(Icons.calendar_today),
   onTap: ()async{
     final datePick= await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1900),
        lastDate: new DateTime(2100)
       );
    if(datePick!=null && datePick!=birthDate){
      setState(() {
        birthDate=datePick; 
        isDateSelected=true;
        birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}"; 
      });
     }
   }
 ),
    );
  }

}