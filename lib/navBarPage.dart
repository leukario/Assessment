import 'package:flutter/material.dart';
import 'package:threeway_studio/screens/homeScreen.dart';

class NavBarPage extends StatefulWidget {
  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int currentIndex = 0;
  final List _pages = [HomeScreen(), HomeScreen(), HomeScreen(), HomeScreen()];
  static const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');
  static const IconData notifications =
      IconData(0xe44f, fontFamily: 'MaterialIcons');
  static const IconData person = IconData(0xe491, fontFamily: 'MaterialIcons');

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                onTap: onTap,
                currentIndex: currentIndex,
                selectedItemColor: Colors.blue[900],
                unselectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      home,
                      size: 30,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      home,
                      size: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      notifications,
                      size: 30,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      notifications,
                      size: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      notifications,
                      size: 30,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      notifications,
                      size: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      person,
                      size: 30,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      person,
                      size: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                ]),
          ),
        ));
  }
}
