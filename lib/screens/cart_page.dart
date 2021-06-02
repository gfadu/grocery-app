import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/general/app_button.dart';
import 'package:grocery_app/widgets/general/appbar.dart';
import '../models/orders.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  remove(index) {
    setState(() {
      orders.removeWhere((element) => element.name == orders[index].name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithTitle(context, 'Cart'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${orders[index].name}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${orders[index].price}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            remove(index);
                          },
                          icon: Icon(Icons.delete),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          loginButton(context, '$totalAmount', () {})
        ],
      ),
    );
  }
}
