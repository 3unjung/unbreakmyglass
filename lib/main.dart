import 'package:flutter/material.dart';
import 'screen/homepage/homepage.dart';

const vert = Color(0xFF59D189);
const argente = Color(0xFFE6E7E4);
const blanc = Color(0xFFF7F7F7);
const umgVert = Color(0xFF88bb22);

void main() {
  runApp(const UmgApp());
}

class UmgApp extends StatelessWidget {
  const UmgApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
              scaffoldBackgroundColor: blanc,
      ),
      home: const HomePage(),
    );
  }
}