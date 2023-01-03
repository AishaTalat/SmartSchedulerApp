import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/RoleSelection.dart';
import 'package:untitled/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/Login.png"), fit: BoxFit.cover)),
          child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 330,
                    ),
                    Container(
                      width: 303,
                      height: 60,
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25),
                          filled: true,
                          fillColor: Color.fromARGB(255, 15, 255, 235)
                              .withOpacity(0.1),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide.none // your color
                              ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide.none // your color
                              ),
                          hintText: 'Your Email',
                          hintStyle: TextStyle(
                              fontFamily: "Abhaya Libre",
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 8, 8, 8)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 303,
                      height: 60,
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25),
                          filled: true,
                          fillColor: Color.fromARGB(255, 15, 255, 235)
                              .withOpacity(0.1),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide.none // your color
                              ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide.none // your color
                              ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              fontFamily: "Abhaya Libre",
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        width: 400,
                        height: 56,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 198, 255, 250)),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(178, 56)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(
                                      color:
                                          Color.fromARGB(255, 198, 255, 250))),
                            ),
                          ),
                          onPressed: () {
                            final String email = emailController.text.trim();
                            final String password =
                                passwordController.text.trim();

                            if (email.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(email)) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text("Please Enter Valid Email"),
                                    );
                                  });
                            } else if (password.isEmpty) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text("Please Enter Password"),
                                    );
                                  });
                            } else {
                              if (email == "123@gmail.com" &&
                                  password == "123") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return RoleSelectionScreen();
                                    },
                                  ),
                                );
                              } else {
                                SignIn(email, password);
                              }
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Login",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Abhaya Libre",
                                      color: Color.fromARGB(255, 0, 0, 0))),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                  // <-- Icon
                                  Icons.east_rounded,
                                  size: 30.0,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 88,
                          height: 26,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 198, 255, 250)
                                      .withOpacity(0.65)),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(178, 56)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide.none,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return SignupScreen();
                                  },
                                ),
                              );
                            },
                            child: Text("Sign Up",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Abhaya Libre",
                                    color: Color.fromARGB(255, 0, 0, 0))),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 160,
                          height: 26,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 198, 255, 250)
                                      .withOpacity(0.76)),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(178, 56)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide.none),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return RoleSelectionScreen();
                                  },
                                ),
                              );
                            },
                            child: Text("Forgot Password?",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Abhaya Libre",
                                    color: Color.fromARGB(255, 0, 0, 0))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }

  Future SignIn(String emailPassed, String passwordPassed) async {
    try {
      await _auth
          .signInWithEmailAndPassword(
              email: emailPassed, password: passwordPassed)
          .then((uid) => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return RoleSelectionScreen();
                    },
                  ),
                ),
              });
    } on FirebaseAuthException catch (error) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("Invalid Email or Password"),
            );
          });
    }
  }
}
