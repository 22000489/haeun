import 'package:flutter/material.dart';
import 'app.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text('My Page'),
      ),
    );
  }
}