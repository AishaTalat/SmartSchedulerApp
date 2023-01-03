import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'UserModel.dart';

Future<void> userSetup(String first_name, String last_name, String CNIC, String phone_number, String email, String password) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String? uid =  auth.currentUser?.uid.toString();
  users.add({'uid': uid, 'first_name': first_name, 'last_name': last_name,
            'CNIC': CNIC,'phone_number':phone_number,'email':email});
  return;
}

