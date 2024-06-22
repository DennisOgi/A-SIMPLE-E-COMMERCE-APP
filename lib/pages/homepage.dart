import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/components/bottomnav.dart';
import 'package:todo/components/neu_box.dart';
import 'package:todo/components/cart_page.dart';
import 'package:todo/pages/caterer_page.dart';
import 'package:todo/pages/shop_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void togglePages(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: non_constant_identifier_names
  final List<Widget> _Pages = [
    // Shop Page
    const ShopPage(),

    // Cart Page

    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => togglePages(index),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: Builder(builder: (context) {
          return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Icon(Icons.menu));
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CatererPage())),
              child: Image.asset(
                "lib/assets/black.png",
                height: 20,
                width: 20,
              ),
            ),
          )
        ],
      ),
      body: _Pages[_selectedIndex],
      drawer: Drawer(
        width: 230,
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "lib/assets/chef.png",
                height: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Divider(
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                leading: Image.asset(
                  "lib/assets/white.png",
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
                title: const Text(
                  "Make Enquiries",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
