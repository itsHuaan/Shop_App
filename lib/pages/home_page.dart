import 'package:flutter/material.dart';
import 'package:shop_app/components/bottom_navigation_bar.dart';
import 'package:shop_app/pages/cart_page.dart';
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
              color: Color.fromARGB(255, 97, 97, 97),
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChanged: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/images/rog.png',
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.grey[700],
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
