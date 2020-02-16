import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_tutorial/services/auth.dart';
import 'package:firebase_tutorial/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import auth.dart


class Home extends StatelessWidget {

  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text(
            'Masrafi Anam'
          ),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text(
                'logout'
              ),
              onPressed: () async{
                await _auth.signOut();
              },
            )
          ],
        ),
      body: Text('Mas'),
    );
  }
}
