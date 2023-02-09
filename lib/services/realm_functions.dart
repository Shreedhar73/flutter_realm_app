import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

import '../models/contact_model.dart';
import '../models/person_model.dart';

class RealmFunctions{

  RealmFunctions._();
  static final _instance = RealmFunctions._();
  static RealmFunctions get instance => _instance;

  late Realm realm;
  final config = Configuration.local([PersonModel.schema,Contact.schema]);
  // realm = Realm(config);

  getListOfPerson() {
    return realm.all<PersonModel>();
  }

  addPerson(PersonModel person, context){
    try{
      realm.write(() {
        realm.add(person);
      });
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
}