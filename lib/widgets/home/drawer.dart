import 'package:flutter/material.dart';
import 'package:grocery_app/screens/cart_page.dart';
import '../../screens/login_page.dart';
import '../../screens/all_products_page.dart';
import '../../screens/signup_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('All Products'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AllProductsPage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Login'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => LoginPage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Cart'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => CartPage()))
            },
          ),
        ],
      ),
    );
  }
}
