import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import '../models/person_model.dart';

class RealmFunctions{

  RealmFunctions._();
  static final _instance = RealmFunctions._();
  static RealmFunctions get instance => _instance;

  final app = App(AppConfiguration("realmtest-hldgg"));
  User? loggedInUser;

  late Realm realm;
  
  // realm = Realm(config);


  anyonmousLogin() async{
    var user = await app.logIn(Credentials.anonymous());
    loggedInUser = user;
  }
  getListOfPerson() {
    return realm.all<PersonModel>();
  }

  addPerson(PersonModel person, context){
    try{
      realm.write(() {
        realm.add(person);
      });
      subscription();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Person Added Successfully")
        )
      );
      // showToastMessage("Person Added Successfully");
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(
          content: Text(e.toString())
        )
      );
    }

  }

  deletePerson(PersonModel person,context){
    realm.write(() {
      realm.delete(person);
    });
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Person Deleted  Successfully")
        )
      );
  }

  //subscription for sync
  subscription() async{
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.add(realm.all<PersonModel>());
     });
     await realm.subscriptions.waitForSynchronization();
  }
}