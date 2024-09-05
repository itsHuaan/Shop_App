import 'package:flutter/material.dart';
import 'package:shop_app/components/bottom_navigation_bar.dart';
import 'package:shop_app/pages/cart_page.dart';
import 'package:shop_app/pages/intro_page.dart';
import 'package:shop_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChanged: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(60.0),
              child: Image.asset(
                'assets/images/rog.png',
                color: Colors.red,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IntroPage(),
                  ),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
