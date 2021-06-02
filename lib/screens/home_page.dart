import 'package:flutter/material.dart';
import '../widgets/home/drawer.dart';
import '../widgets/home/category_container.dart';
import '../widgets/home/homepage_category.dart';
import '../widgets/home/top_products_container.dart';
import '../widgets/general/appbar.dart';
import '../screens/all_products_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: appBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            Image.asset(
              'assets/voucher.png',
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            SizedBox(height: 30),
            homePagecategory('Categories', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AllProductsPage()));
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                categoryContainer(
                    context, Colors.amber, 'assets/banana-bread.png', 'bakery'),
                categoryContainer(
                    context, Colors.blueAccent, 'assets/apple.png', 'fruits'),
                categoryContainer(context, Colors.lightGreenAccent,
                    'assets/coriander.png', 'vegetables'),
                categoryContainer(
                    context, Colors.pinkAccent, 'assets/boba.png', 'drinks')
              ],
            ),
            SizedBox(height: 30),
            homePagecategory('Top Products', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AllProductsPage()));
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                topProductContainer(context, 'assets/eggplant.png', 'egg plant',
                    Colors.amber.withOpacity(0.5)),
                topProductContainer(context, 'assets/cauliflower.png',
                    'cailiflower', Colors.blue.withOpacity(0.5)),
                topProductContainer(context, 'assets/garlic.png', 'garlic',
                    Colors.pinkAccent.withOpacity(0.5)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
