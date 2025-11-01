import 'package:flutter/material.dart';

class AssignmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الواجبات')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('لم يتم رفع واجبات حالياً', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // لاحقاً هنضيف كود لرفع ملف الواجب أو تحميله
              },
              child: Text('رفع واجب جديد'),
            ),
          ],
        ),
      ),
    );
  }
}
