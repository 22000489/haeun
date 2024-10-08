import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'colors.dart';

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/favorite_hotels': (context) => const FavoriteHotelsPage(),
        '/my_page': (context) => const MyPage(),
      },
      theme: _kShrineTheme,
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: kShrinePink100,
            ),
            child: Text(
              'Menu',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/search');
            },
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Favorite Hotels'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/favorite_hotels');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Page'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/my_page');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}

// 기존의 _kShrineTheme 정의는 그대로 유지