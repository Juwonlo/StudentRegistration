import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:registration/pages/auth_page.dart';
import 'package:registration/pages/home_page.dart';
import 'package:registration/pages/login_page.dart';
import 'package:registration/pages/main_page.dart';
import 'package:registration/pages/users.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(
  );
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyByqCytCGbMJaYx6DFqTfZWLrM2NMl-N7w',
          appId: '1:424321030892:android:65de232cc08750402123c9',
          messagingSenderId: 'xxxx',
          projectId: 'studentreg-105b4')
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Student Registration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'STUDENT REGISTRATION',
      //     textAlign: TextAlign.center,
      //   ),
      // ),
      body: MainPage(),
    );
  }
}


