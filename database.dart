import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});

  //cpllection reference
  final CollectionReference masrafiCollection = Firestore.instance.collection('mas');

  Future updateUserData(String sugurs, String name, int strength)async{
    return await masrafiCollection.document(uid).setData({
      'sugars': sugurs,
      'name': name,
      'strength': strength,
    }) ;
  }

  //masrafi list  from snapshot

}