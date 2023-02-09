// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:realm_test/models/person_model.dart';

import '../services/realm_functions.dart';

class ListofPerson extends StatefulWidget {
  const ListofPerson({super.key});

  @override
  State<ListofPerson> createState() => _ListofPersonState();
}

class _ListofPersonState extends State<ListofPerson> {
  int get carsCount => RealmFunctions.instance.realm.all<PersonModel>().length;
  var persons;
  @override
  void initState() {
    persons = RealmFunctions.instance.realm.all<PersonModel>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: carsCount,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemBuilder: (context, index) {
          var person = persons[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(person.name),
                      const SizedBox(height: 15,),
                      Text(person.age.toString()),
                      const SizedBox(height: 15,),
                      Text(person.contact.email),
                      Text(person.contact.phone),
                      const SizedBox(height: 15,),
                    ],
                  ),
                  Center(
                    child: IconButton(
                      onPressed: (){
                        RealmFunctions.instance.deletePerson(person,context);
                        setState(() {
                        });
                      },
                      icon: const Icon(Icons.delete, color: Colors.red,),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      
      ),
    );
  }
}