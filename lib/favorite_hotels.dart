import 'package:flutter/material.dart';
import 'app.dart';

class FavoriteHotelsPage extends StatelessWidget {
  const FavoriteHotelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Hotels'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text('Favorite Hotels Page'),
      ),
    );
  }
}