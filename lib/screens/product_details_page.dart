import 'package:flutter/material.dart';
import '../widgets/general/appbar.dart';
import '../widgets/general/app_button.dart';
import '../models/products.dart';
import '../screens/cart_page.dart';
import '../models/orders.dart';
import 'dart:core';

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  const ProductDetailsPage({required this.product});
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  void addItemToList() {
    if (orders.length == 0) {
      setState(() {
        orders.insert(
            0, Orders(name: widget.product.title, price: widget.product.price));
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => CartPage()));
    } else {
      var order =
          orders.indexWhere((element) => element.name == widget.product.title);
      // print(order.name);
      if (order >= 0) {
        print('Present');
      } else {
        setState(() {
          orders.insert(0,
              Orders(name: widget.product.title, price: widget.product.price));
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => CartPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwithImage(context, () {
        Navigator.pop(context);
      }, () {}, widget.product.image),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            children: [
              Text(
                '\$${widget.product.title}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '\$2.50/kg',
            style: TextStyle(fontSize: 30, color: Colors.grey.withOpacity(0.5)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.product.description),
          SizedBox(
            height: 20,
          ),
          Text(
            'Related items',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                relatedItemsContainer(context, Colors.yellow.withOpacity(0.5),
                    'Broccoli', 'assets/broccoli.png'),
                SizedBox(width: 10),
                relatedItemsContainer(context, Colors.pink.withOpacity(0.5),
                    'Corn', 'assets/corn.png'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          orderButton(() {
            addItemToList();
          })
        ],
      ),
    );
  }
}

Widget relatedItemsContainer(context, color, text, image) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.5,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          image,
          height: 70,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text),
            Text("\$2.45"),
          ],
        ),
      ],
    ),
  );
}
