import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireBase.dart';
//import 'package:untitled/ProprietorMenu.dart';
//import 'package:untitled/RenterMenu.dart';
//import 'NavBar.dart';
import 'login.dart';
import 'package:flutter/services.dart';

class RoleSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 236, 240),
      body: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          width: 400,
          height: 600,
          child: Image.asset('lib/img/BellIcon.png', fit: BoxFit.contain),
        ),
        Positioned(
          child: Text(
            "Todos",
            style: TextStyle(
                color: Color.fromARGB(255, 8, 8, 8),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          top: 40,
          left: 20,
        ),
        DraggableScrollableSheet(
          maxChildSize: 0.85,
          builder: (BuildContext context, ScrollController scrollController) {
            return Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          "Task No $index",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "This is detail of the task No $index",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        trailing: Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                        ),
                        isThreeLine: true,
                      );
                    },
                    controller: scrollController,
                    itemCount: 20,
                  ),
                ),
                Positioned(
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  top: -10,
                  right: 30,
                )
              ],
            );
          },
        )
      ]),
    );
  }
}
// class RoleSelectionScreen extends StatefulWidget {
//   const RoleSelectionScreen({Key? key}) : super(key: key);

//   @override
//   State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
// }

// class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
//   @override
//   Widget build(BuildContext context) {
//     //dispose();

//     return Scaffold(
//         //resizeToAvoidBottomInset: false,
//         //drawer: NavBar(),
//         body: Padding(
//       padding: EdgeInsets.zero,
//       child: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("lib/img/RoleSelection.png"),
//                 fit: BoxFit.cover)),
//         child: Container(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 // mainAxisAlignment: MainAxisAlignment.center,

//                 children: [
//                   SizedBox(
//                     height: 26,
//                   ),
//                   Align(
//                     alignment: Alignment(-0.8, 0.2),
//                     child: Row(
//                       children: [
//                         SizedBox(
//                           width: 13,
//                         ),
//                         Builder(builder: (context) {
//                           return Container(
//                             child: TextButton(
//                                 onPressed: () =>
//                                     Scaffold.of(context).openDrawer(),
//                                 child: Image.asset('lib/img/DrawerIcon.png')),
//                           );
//                         }),
//                         SizedBox(
//                           width: 250,
//                         ),
//                         TextButton(
//                             onPressed: () {},
//                             child: Image.asset('lib/img/BellIcon.png')),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 370,
//                   ),
//                   Container(
//                     width: 303,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20.0),
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.2),
//                           blurRadius: 8,
//                           offset: Offset(0, 12),
//                         )
//                       ],
//                     ),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(
//                             Color.fromARGB(255, 241, 69, 69)),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                               side: BorderSide(color: Colors.red)),
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (BuildContext context) {
//                               return RoleSelectionScreen();
//                             },
//                           ),
//                         );
//                       },
//                       child: Text("Main Menu",
//                           style: TextStyle(
//                               fontSize: 27,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: "Abhaya Libre")),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(
//                     width: 303,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20.0),
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.2),
//                           blurRadius: 8,
//                           offset: Offset(0, 12),
//                         )
//                       ],
//                     ),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(
//                             Color.fromARGB(255, 243, 48, 48)),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                               side: BorderSide(color: Colors.red)),
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (BuildContext context) {
//                               return RoleSelectionScreen();
//                             },
//                           ),
//                         );
//                       },
//                       child: Text("Go Back",
//                           style: TextStyle(
//                               fontSize: 27,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: "Abhaya Libre")),
//                     ),
//                   ),
//                 ],
//               ),
//             )),
//       ),
//     ));
//   }

//   void dispose() {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//   }
// }