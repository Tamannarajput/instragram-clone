import 'package:flutter/material.dart';

class signedInScreen extends StatefulWidget {
  const signedInScreen({super.key});

  @override
  State<signedInScreen> createState() => _signedInScreenState();
}

class _signedInScreenState extends State<signedInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo])),),);
  }
}