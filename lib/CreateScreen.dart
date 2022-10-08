import 'dart:developer';

import 'package:flutter/material.dart';
import '/homeScreen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '/app.dart';

class CreateScreen extends StatefulWidget {
  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _email = "email", _password = "value", _phone = "12345678";
  void signIn() async {

    await  FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)
        .catchError((onError){
      print(onError);}).then((authUser){
      print(authUser.user!.uid);
      //tb1Y6ynXVZWEiWZCPTTSr0kDBt53
    });
  }

  String reternFunction() {
    print("Invalid credentials");
    return "Invalid email or password";
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(children: [
                    Image.asset(
                      'assets/pexels-ajay-donga-2174656.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.3, 0.9],
                          colors: [
                            Colors.transparent,
                            Colors.white,
                          ],
                        ),
                      ),
                      height: height * 0.35,
                      width: width,
                    ),
                  ]),
                  Center(
                    child: Text(
                      "QuikGo",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightBlueAccent),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Explore the world!",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Container(
                      child: Text(
                        "Create New Account",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      padding: EdgeInsets.only(right: 13),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(6
                       // ),

                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.transparent],
                        ),
                        border: Border(
                          left: BorderSide(color: Colors.blue, width: 5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      _phone = value!;
                    },
                    validator: (phone) {
                      if (phone!.isEmpty)
                        return "Please enter phone number";
                      else if (phone.length <10 || phone.length>10)
                        return "Enter valid phone number";

                    },
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.lightBlueAccent,
                      ),
                      labelText: "phone number",
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      _phone = value!;
                    },
                    validator: (email) {
                      if (email!.isEmpty)
                        return "Please enter email";
                      else if (!RegExp(
                          r"[a-z0-9!#$%&'*+/=?_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                          .hasMatch(email)) return "Enter valid email address";
                    },
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.lightBlueAccent,
                      ),
                      labelText: "EMAIL ADRESS",
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    onSaved: (value) {
                      _password = value!;
                    },
                    validator: (password) {
                      if (password!.isEmpty)
                        return "Please enter password";
                      else if (password.length < 8 || password.length > 15)
                        return "Minimum 8 characters required";
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.lightBlueAccent,
                          )),
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Colors.lightBlueAccent,
                      ),
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      height: 40,
                      width: width - 30,
                      child: FlatButton(
                        color: Colors.lightBlueAccent,
                        splashColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();

                            signIn();




                          }
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerRight,
                      child:   Container(
                        color: Colors.white,
                        height: 40,
                        width: 100,
                        child: FlatButton(
                          color:Colors.lightBlueAccent,
                              splashColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),

                              ),

                              onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()
                                  ),
                                );
                              },
                              child: Text("Go back",style: TextStyle(color: Colors.white),),
                            ),
                      ),
                        ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
