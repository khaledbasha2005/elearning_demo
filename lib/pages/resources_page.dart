import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  final List<Map<String, String>> resources = [
    {'title': 'المحاضرة الأولى', 'link': 'https://example.com/lecture1.pdf'},
    {'title': 'فيديو تعليمي', 'link': 'https://youtu.be/example'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الموارد الدراسية')),
      body: ListView.builder(
        itemCount: resources.length,
        itemBuilder: (context, index) {
          final res = resources[index];
          return ListTile(
            title: Text(res['title']!),
            trailing: Icon(Icons.open_in_new),
            onTap: () {
              // مستقبلاً هنضيف هنا كود لفتح الرابط مباشرة
            },
          );
        },
      ),
    );
  }
}
