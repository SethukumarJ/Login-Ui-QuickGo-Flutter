import 'package:flutter/material.dart';
class ScreenOne extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height*.5,
      width: MediaQuery.of(context).size.width,

      color: Colors.white,
      child: ListView(
        children: [
          FirstRow(),
          FirstRow(),
          FirstRow(),
          FirstRow(),
          FirstRow(),
          FirstRow(),

          FirstRow(),
          FirstRow(),
        ],
      ),



    );
  }
}
class FirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){

      return Padding(
        padding: EdgeInsets.only(left: 14,top: 16),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height*.12,
          width: MediaQuery.of(context).size.width,
          child: Row(

            children: [
              Container(
               child :Image.asset('assets/boots.jfif',fit: BoxFit.cover,),
                height: 80,
                width: 80,


              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top:10),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Catbird Black          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    Text("Ankle length bootie",style: TextStyle(color: Colors.grey),),
                    Text("&47                           ",style: TextStyle(color: Colors.lightBlueAccent, fontSize: 15,fontWeight: FontWeight.w400)),

                         Row(
                           children: [
                            Icon(Icons.add_box_rounded,color: Colors.red,),
                            Text(" 1 "),
                            Icon(Icons.add_box_rounded,color: Colors.red,),
                          ],
                        ),


                  ],
                ),
              )
            ],

          ),
        ),

    );
  }
}