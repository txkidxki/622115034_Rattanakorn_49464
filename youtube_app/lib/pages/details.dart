import 'dart:io';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.yellow[600],
        ),
      body: ListView(
        children: [
          Text("Details Explanation")
        ]
        ,),
      
    );
  }
}