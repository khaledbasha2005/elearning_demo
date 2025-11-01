import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/resources_page.dart';
import 'pages/announcements_page.dart';
import 'pages/assignments_page.dart';
import 'pages/admin_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // ضروري قبل تشغيل التطبيق
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learning Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      routes: {
        '/resources': (context) => ResourcesPage(),
        '/announcements': (context) => AnnouncementsPage(),
        '/assignments': (context) => AssignmentsPage(),
        '/admin': (context) => AdminPage(),
      },
    );
  }
}
