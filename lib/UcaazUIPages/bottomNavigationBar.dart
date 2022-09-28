import "package:flutter/material.dart";
import 'package:hello/UcaazUIPages/ucaazHome.dart';

class MainBottomNavigator extends StatefulWidget {
  const MainBottomNavigator({super.key});

  @override
  State<MainBottomNavigator> createState() => _MainBottomNavigatorState();
}

class _MainBottomNavigatorState extends State<MainBottomNavigator> {
  int _selectedIndex = 0;
  int _renderUiPage = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    UcaazHome(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 3:
        setState(() {
          _selectedIndex = index;
          _renderUiPage = index;
        });
        break;
      case 0:
        setState(() {
          _selectedIndex = index;
          _renderUiPage = index;
        });
        break;
      default:
        setState(() {
          _selectedIndex = index;
        });
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Scaffold(
              backgroundColor: Color(0xfffcf7f1),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xfffcf7f1),
                elevation: 0,
                title: const Text(
                  'Categories',
                  style: TextStyle(fontSize: 16, color: Color(0xff0f444d)),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.question_mark_sharp,
                      size: 24,
                      color: Color(0xff0f444d),
                    ),
                  )
                ],
              ),
              body: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  Image.network('https://picsum.photos/250?image=1'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                ],
              ),
            );
          },
        );
    }
  }

  Widget _onChangeTabOption(BuildContext context) {
    if (_renderUiPage == 3) {
      return UcaazHome();
    }
    return UcaazHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff075e6d),
      body: _onChangeTabOption(context),
      // _widgetOptions.elementAt(_renderPage),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Color(0xffababab),
          showUnselectedLabels: true,
          selectedItemColor: Color(0xff0f444d),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
