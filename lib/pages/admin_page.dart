import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  bool isUploading = false;

  Future<void> uploadFile() async {
    try {
      // اختيار ملف
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;

      setState(() => isUploading = true);
      final file = File(result.files.single.path!);
      final fileName = result.files.single.name;

      // رفع الملف إلى Storage
      final ref = FirebaseStorage.instance.ref('resources/$fileName');
      await ref.putFile(file);
      final url = await ref.getDownloadURL();

      // حفظ الرابط في Firestore
      await FirebaseFirestore.instance.collection('resources').add({
        'title': fileName,
        'url': url,
        'uploadedAt': DateTime.now(),
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('تم رفع الملف بنجاح 🎉')));
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('حدث خطأ: $e')));
    } finally {
      setState(() => isUploading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('لوحة الدكتورة')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: isUploading ? null : uploadFile,
              icon: Icon(Icons.upload_file),
              label: Text(isUploading ? 'جاري الرفع...' : 'رفع ملف جديد'),
            ),
          ],
        ),
      ),
    );
  }
}
