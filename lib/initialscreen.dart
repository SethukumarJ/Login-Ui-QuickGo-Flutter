import 'package:flutter/material.dart';
import '/app.dart';


class InitialScreen extends StatelessWidget{
@override
  Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner: false,
  home: LoginScreen(),
);
}
}