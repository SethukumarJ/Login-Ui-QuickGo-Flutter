import 'package:first_app/app.dart';
import 'package:flutter/material.dart';
import '/screenone.dart';
import '/screenTwo.dart';
import '/screenThree.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(270),
          child: AppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Container(child:Stack(
              children: [
                Image.asset(
                  'assets/girlImage.jpeg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: Text(
                    "WomenBooBs",
                    style: TextStyle(fontFamily: 'Pacifico', fontSize: 35),
                  ),
                  right: 12,
                  top: 40,
                ),
                Positioned(
                  child: Text(
                    "WholeSale",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  left: 115,
                  top: 64,
                ),
                Positioned(
                  right: 15,
                  child: Text(
                    "Spring's new arrival",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  top: 95,
                ),
                Positioned(
                  child: Text(
                    " 254",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlueAccent),
                  ),
                  right: 15,
                  top: 115,
                ),
              ],
            ),
              ),
            bottom: TabBar(
              tabs   :<Widget>[
                Tab(child: Text("Boots T-Shirts",style: TextStyle(color: Colors.black),),),
                Tab(child: Text("SunGlasses",style: TextStyle(color: Colors.black),),),
                Tab(child: Text("Tos&Tunics",style: TextStyle(color: Colors.black),),),
              ]
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ScreenOne(),
            ScreenTwo(),
            ScreenThree(),
          ],
        ),













        // //appBar: AppBar(flexibleSpace: Ima,),
        // body: Column(
        //   children: [
        //     SizedBox(
        //       height: mediaQuery.height * .4,
        //       width: mediaQuery.width,
        //       child: Stack(
        //         children: [
        //           Image.asset(
        //             'assets/girlImage.jpeg',
        //             fit: BoxFit.cover,
        //           ),
        //           Positioned(
        //             child: Text(
        //               "WomenBooBs",
        //               style: TextStyle(fontFamily: 'Pacifico', fontSize: 35),
        //             ),
        //             right: 12,
        //             top: 40,
        //           ),
        //           Positioned(
        //             child: Text(
        //               "WholeSale",
        //               style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        //             ),
        //             left: 120,
        //             top: 64,
        //           ),
        //           Positioned(
        //             right: 15,
        //             child: Text(
        //               "Spring's new arrival",
        //               style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        //             ),
        //             top: 95,
        //           ),
        //           Positioned(
        //             child: Text(
        //               " 254",
        //               style: TextStyle(
        //                   fontSize: 25,
        //                   fontWeight: FontWeight.w500,
        //                   color: Colors.lightBlueAccent),
        //             ),
        //             right: 15,
        //             top: 115,
        //           ),
        //         ],
        //       ),
        //     ),
        //     DefaultTabController(length: 3,
        //         initialIndex: 0,
        //         child: Column(
        //           children:[SizedBox(
        //             height: MediaQuery.of(context).size.height*.1,
        //             width: MediaQuery.of(context).size.width,
        //
        //             child: Column(
        //               children: [
        //                 TabBar(tabs: <Widget>[
        //                   Tab(text: "Boots T-shirts",),
        //                   Tab(text: "Sunglasses",),
        //                   Tab(text: "Tos&Tunics",),
        //                 ])
        //               ],
        //
        //             ),
        //           ),
        //            TabBarView(children: <Widget>[
        //              ScreenOne(),
        //              ScreenTwo(),
        //              ScreenThree(),
        //            ])
        //           ]
        //         ),
        //
        //     ),
        //
        //
        //
        //



            // DefaultTabController(
            //   length: 3,
            //   initialIndex: 0,
            //   child: Container
            //     (
            //     height: mediaQuery.height * .5,
            //     child: Column(
            //       children: [
            //         Container(
            //           height: mediaQuery.height * .1,
            //           width: mediaQuery.width,
            //           child: TabBar(
            //             tabs: <Widget>[
            //               Tab(
            //                 child: Text(
            //                   "Boots T shirts",
            //                   style: TextStyle(color: Colors.black),
            //                 ),
            //               ),
            //               Tab(
            //                 child: Text(
            //                   "Sunglasses",
            //                   style: TextStyle(color: Colors.black),
            //                 ),
            //               ),
            //               Tab(
            //                 child: Text(
            //                   "Tos & Tunics",
            //                   style: TextStyle(color: Colors.black),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         TabBarView(
            //           children: [
            //             ScreenOne(),
            //             ScreenTwo(),
            //             ScreenThree(),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //
            //
            // ),

         // ],
       // ),

        //appBar: AppBar(
        // title: Text("QuikGo",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Colors.grey),),
        // backgroundColor: Colors.blueGrey,

        //  ),

        // body:ListView.separated(

        //itemCount: 25,
        //separatorBuilder: (BuildContext context, int index) => const Divider(),
        //itemBuilder: (BuildContext context, int index) {
        //return ListTile(
        //title: Text('user $index'),
        //tileColor: Colors.blueGrey,
        //);
        // },
        //),
        //floatingActionButton: Container(
        //height: 40,
        //width: 100,
        //child: FlatButton(
        //color :Colors.lightBlueAccent,
        //splashColor: Colors.blue,
        //shape: RoundedRectangleBorder(
        //borderRadius: BorderRadius.all(Radius.circular(20)),

        //),

        // onPressed: (){
        // Navigator.pop(
        // context,
        //MaterialPageRoute(builder: (context)=> LoginScreen())
        //);
        //},
        //child: Center(child: Text("Go Back")),
        //),
        //),
        //drawer: Drawer(

        // child: ListView(
        // children: [
        // Padding(
        //   padding: const EdgeInsets.all(0),
        // child: DrawerHeader(

        // child: Text("SethuKumar"),
        //decoration: BoxDecoration(
        // color: Colors.blue,

        //),
        //),
        // )
        //],
        //),
        //),
      ),
    );
  }
}
