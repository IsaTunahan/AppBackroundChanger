import 'package:backround_changer/bottom_nav_bar.dart';
import 'package:backround_changer/change_color.dart';
import 'package:backround_changer/hot_or_cold.dart';
import 'package:backround_changer/stack_deneme.dart';
import 'package:backround_changer/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Color',
      // home: myHomePage(),
      initialRoute: '/',
      routes: {
        "/": (context) => myHomePage(),
        '/settings': (context) => MyApps(),
      },
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    //List<Color> colors=[Colors.grey.shade900,Colors.grey.shade500,Colors.white];
    return WillPopScope(
      onWillPop: () async {
        print('pop edecek');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Change Color App'),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  print('Settings');
                  Navigator.of(context).pushNamed('/settings');
                },
                tooltip: 'Search',
                icon: const Icon(
                  Icons.settings_sharp,
                  size: 30,
                ))
          ],
        ),
        bottomNavigationBar: bottomNavBar(),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
          ),
          child: Column(
            children: const [
              ChangeColor(),
              hotOrCold(),
              stackDeneme(),
              // Image(
              //   image: AssetImage('images/icon_flutter.png'),
              //   width: 200,
              //   height: 200,
              //   fit: BoxFit.cover,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          color: Colors.black,
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
            child: Text(
              style: TextStyle(color: Colors.white),
              'Welcome to Settindgs Page',
            ),
          ),
        ),
      ),
    );
  }
}
class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
      
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hoşgeldiniz!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.login),
              label: Text("Google ile Giriş Yap"),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.login),
              label: Text("Apple ile Giriş Yap"),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.login),
              label: Text("Facebook ile Giriş Yap"),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Text("E-posta ile Üye Ol"),
            ),
          ],
        ),
      ),
    );
  }
}