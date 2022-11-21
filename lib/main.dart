import 'package:flutter/material.dart';
import 'screen/homepage/homepage.dart';

void main() {
  runApp(const UmgApp());
}

class UmgApp extends StatelessWidget {
  const UmgApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}