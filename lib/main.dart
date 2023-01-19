// ignore: unused_import
import 'package:etsy/pages/login.dart';
// ignore: unused_import
import 'package:etsy/pages/notif.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EtsyApp());
}

class EtsyApp extends StatelessWidget {
  const EtsyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
