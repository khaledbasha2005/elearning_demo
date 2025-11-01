import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الصفحة الرئيسية')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'مرحباً بكم في موقع المقرر الدراسي',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/resources'),
              child: Text('الموارد الدراسية'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/announcements'),
              child: Text('الإعلانات'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/assignments'),
              child: Text('الواجبات'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin'),
              child: Text('لوحة الدكتورة'),
            ),
          ],
        ),
      ),
    );
  }
}