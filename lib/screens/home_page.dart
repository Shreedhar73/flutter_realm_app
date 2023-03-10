import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realm_test/models/person_model.dart';
import 'package:realm_test/screens/widgets/form_field_widget.dart';
import 'package:realm_test/services/realm_functions.dart';
import 'list_person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late Realm realm;

  // _HomePageState() {
    
  // }

  
  

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  @override
  void initState() {
    // final config = Configuration.local([PersonModel.schema, Contact.schema]);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var loggedInUser =  RealmFunctions.instance.loggedInUser!;
      final config = Configuration.flexibleSync( loggedInUser, [PersonModel.schema,PersonModelContact.schema]);
      RealmFunctions.instance.realm = Realm(config);

    RealmFunctions.instance.subscription();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ListofPerson()));
              },
              child: const Text("Next Page"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              FormFieldWidget(
                textEditingController: idController,
                labelText: "ID",
              ),
              const SizedBox(height: 15,),
              FormFieldWidget(
                textEditingController: nameController,
                labelText: "Name",
              ),
              const SizedBox(height: 15,),
              FormFieldWidget(
                textEditingController: ageController,
                labelText: "Age",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15,),
              FormFieldWidget(
                textEditingController: emailController,
                labelText: "Email",
              ),
              const SizedBox(height: 15,),
              FormFieldWidget(
                textEditingController: phoneController,
                labelText: "Phone",
              ),
              const SizedBox(height: 15,),
              Center(
                child: InkWell(
                  onTap: (){
                    var person = PersonModel(
                      idController.text.toString(),
                      name: nameController.text,
                      age: int.parse(ageController.text),  
                      contact: PersonModelContact(
                        phone: phoneController.text,
                        email: emailController.text,
                        
                      )
      
                    );
                    RealmFunctions.instance.addPerson(person,context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text("Add Person"),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}