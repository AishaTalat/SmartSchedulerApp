import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireBase.dart';
import 'package:untitled/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController lastNameController = new TextEditingController();
  final TextEditingController CNICController = new TextEditingController();
  final TextEditingController phoneNumberController =
      new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmPasswordController =
      new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/img/Signup.png"), fit: BoxFit.cover)),
        child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 155,
                        height: 41,
                        child: TextField(
                          controller: firstNameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            filled: true,
                            fillColor: Color.fromARGB(255, 112, 215, 255)
                                .withOpacity(0.2),
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
                            hintText: 'First Name',
                            hintStyle: TextStyle(
                                fontFamily: "Abhaya Libre",
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 12, 12, 12)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 155,
                        height: 41,
                        child: TextField(
                          controller: lastNameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            filled: true,
                            fillColor: Color.fromARGB(255, 112, 215, 255)
                                .withOpacity(0.2),
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
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                                fontFamily: "Abhaya Libre",
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 12, 12, 12)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 320,
                    height: 41,
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15),
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 112, 215, 255).withOpacity(0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                    height: 15,
                  ),
                  Container(
                    width: 320,
                    height: 41,
                    child: TextField(
                      controller: CNICController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15),
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 112, 215, 255).withOpacity(0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none // your color
                            ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none // your color
                            ),
                        hintText: 'CNIC',
                        hintStyle: TextStyle(
                            fontFamily: "Abhaya Libre",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 8, 8)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 320,
                    height: 41,
                    child: TextField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15),
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 112, 215, 255).withOpacity(0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none // your color
                            ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none // your color
                            ),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            fontFamily: "Abhaya Libre",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 14, 13, 13)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 320,
                    height: 41,
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15),
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 112, 215, 255).withOpacity(0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                            color: Color.fromARGB(255, 10, 10, 10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 320,
                    height: 41,
                    child: TextField(
                      obscureText: true,
                      controller: confirmPasswordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15),
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 112, 215, 255).withOpacity(0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none // your color
                            ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none // your color
                            ),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            fontFamily: "Abhaya Libre",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 15, 14, 14)),
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
                              Color.fromARGB(255, 204, 239, 253)),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(178, 56)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 204, 239, 253)),
                            ),
                          ),
                        ),
                        onPressed: () {
                          final String firstName =
                              firstNameController.text.trim();
                          final String lastName =
                              lastNameController.text.trim();
                          final String email = emailController.text.trim();
                          final String CNIC = CNICController.text.trim();
                          final String phoneNumber =
                              phoneNumberController.text.trim();
                          final String password =
                              passwordController.text.trim();
                          final String confirmPassword =
                              confirmPasswordController.text.trim();
                          if (firstName.isEmpty ||
                              lastName.isEmpty ||
                              CNIC.isEmpty ||
                              phoneNumber.isEmpty) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Error"),
                                    content:
                                        Text("Please Fill All the Text Fields"),
                                  );
                                });
                          } else if (email.isEmpty ||
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
                          } else if (password.length <= 6) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Error"),
                                    content: Text(
                                        "Please Enter atleast 7 Characters for Password"),
                                  );
                                });
                          } else if (password.isEmpty ||
                              confirmPassword.isEmpty) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Error"),
                                    content: Text("Please Enter a Password"),
                                  );
                                });
                          } else {
                            if (confirmPassword == password) {
                              SignUp(firstName, lastName, CNIC, phoneNumber,
                                  email, password);
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text("Password does not match"),
                                    );
                                  });
                            }
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Sign up",
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
                    height: 90,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 240,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 77,
                        height: 26,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 204, 239, 253)
                                    .withOpacity(0.65)),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(178, 56)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Log in",
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
      ),
    );
  }

  //SIGN UP METHOD
  Future SignUp(String first_name, String last_name, String CNIC,
      String phone_number, String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? updateUser = FirebaseAuth.instance.currentUser;
      userSetup(first_name, last_name, CNIC, phone_number, email, password);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text("Account Created Successfully"),
            );
          });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return SignupScreen();
          },
        ),
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
