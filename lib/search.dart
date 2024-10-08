import 'package:flutter/material.dart';
import 'app.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text('Search Page'),
      ),
    );
  }
}