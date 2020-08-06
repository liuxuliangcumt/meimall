import 'package:flutter/material.dart';
// 发布动态

class PublicBehaviour extends StatefulWidget {
  @override
  _PublicBehaviourState createState() => _PublicBehaviourState();
}

class _PublicBehaviourState extends State<PublicBehaviour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发布'),
      ),
    );
  }
}
