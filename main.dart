import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    title: 'test app',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("app"),
        // ),

        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/img/Homepage.png"), fit: BoxFit.cover)),
      child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Abhaya Libre",
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 2.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(149, 199, 42, 42),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 303,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 107, 23, 23).withOpacity(0.2),
                        blurRadius: 8,
                        offset: Offset(0, 12),
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 132, 241, 223)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                                color: Color.fromARGB(255, 136, 236, 240))),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text("Get Started!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Abhaya Libre")),
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
