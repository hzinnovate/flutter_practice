import "package:flutter/material.dart";
import 'package:hello/UcaazUIPages/bottomSheetModals.dart';
import 'package:hello/UcaazUIPages/shoppingCart.dart';
import 'package:hello/UcaazUIPages/ucaazHome.dart';

class MainBottomNavigator extends StatefulWidget {
  const MainBottomNavigator({super.key});

  @override
  State<MainBottomNavigator> createState() => _MainBottomNavigatorState();
}

class _MainBottomNavigatorState extends State<MainBottomNavigator> {
  int _selectedIndex = 0;
  int _renderUiPage = 0;

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
        Future<void> future = showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            if (_selectedIndex == 1) {
              return const CategoriesSheet();
            }
            if (_selectedIndex == 2) {
              return const SearchBottomSheet();
            }
            if (_selectedIndex == 4) {
              return const ProfileBottomSheet();
            }
            return Container();
          },
        );
        future.then((value) {
          setState(() {
            _selectedIndex = _renderUiPage;
          });
        });
    }
  }

  Widget _onChangeTabOption(BuildContext context) {
    if (_renderUiPage == 3) {
      return const ShoppingCart();
    }
    return const UcaazHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _onChangeTabOption(context),
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
          unselectedItemColor: const Color(0xffababab),
          showUnselectedLabels: true,
          selectedItemColor: const Color(0xff0f444d),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
