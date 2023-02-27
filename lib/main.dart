

import 'package:flutter/material.dart';
import 'package:ocean_prototype/pages/feed_page.dart';
import 'package:ocean_prototype/pages/mypage_page.dart';
import 'package:ocean_prototype/pages/peoples_page.dart';
import 'package:ocean_prototype/pages/search_page.dart';
import 'pages/main_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// 탭을 이동할 때 쓸 변수!
  int screenIndex = 0;
  List<Widget> bodyList =[Main_Page(),Feed_page(),Search_Page(),Peoples_Page(),Mypage_Page(),];


  void _onItemTapped(int index) {
    setState(() {
      screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodyList[screenIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          currentIndex: screenIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.feed_outlined),label: "feed"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.people),label: "people"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "bookmark"),],
          onTap: (value) {
          setState(() { _onItemTapped(value);
          });
          },
        ),
    );
  }
}
