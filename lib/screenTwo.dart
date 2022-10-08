import 'package:flutter/material.dart';
class ScreenTwo extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height*.5,
      width: MediaQuery.of(context).size.width,

      color: Colors.green,
      child: Center(
        child: Text("ScreenTwo",style: TextStyle(color: Colors.blue),),),
    );
  }
}