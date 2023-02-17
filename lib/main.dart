import 'package:flutter/material.dart';
import 'package:realm_test/screens/home_page.dart';
import 'package:realm_test/services/realm_functions.dart';

void main() async{
  
  await RealmFunctions.instance.anyonmousLogin();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
