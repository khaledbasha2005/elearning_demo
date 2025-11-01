import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> announcements = [
    'تم رفع المحاضرة الثانية.',
    'موعد الواجب الأول يوم الثلاثاء القادم.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الإعلانات')),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.campaign),
              title: Text(announcements[index]),
            ),
          );
        },
      ),
    );
  }
}