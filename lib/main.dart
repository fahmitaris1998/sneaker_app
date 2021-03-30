import 'package:flutter/material.dart';
import 'package:sneakers_store/view/detail.dart';
import 'package:sneakers_store/view/home.dart';
import 'package:sneakers_store/view/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex=0;
  final tabs=[
    Home(),
    Search(),
    DetailSepatu(),
    Center(
      child: Text("akun"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(97,130,216,1),
        unselectedItemColor: Color.fromRGBO(97,130,216,0.5),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("")
          ),
        ],
        onTap: (index){
          setState(() {
            currentindex = index;
          });
        },
      ),
      body:tabs[currentindex]
     );
  }
}
