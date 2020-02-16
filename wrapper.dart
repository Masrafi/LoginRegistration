import 'package:firebase_tutorial/models/user.dart';
import 'package:firebase_tutorial/screens/authentication/authenticate.dart';
import 'package:firebase_tutorial/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
   // print(user);

    //return either home or authenticate widget
    //return Authenticate();
    if (user == null){
      return Authenticate();
    }else {
      return Home();
    }
  }
}
