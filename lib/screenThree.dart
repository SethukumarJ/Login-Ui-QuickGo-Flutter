import 'package:flutter/material.dart';
class ScreenThree extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height*.5,
      width: MediaQuery.of(context).size.width,

      color: Colors.blue,
      child: Center(
        child: Text("ScreenThree",style: TextStyle(color: Colors.blue),),),
    );
  }
}