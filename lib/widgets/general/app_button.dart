import 'package:flutter/material.dart';

Widget loginButton(context, text, onPressed) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.lightBlue,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}

Widget orderButton(onPressed) {
  return Container(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.green),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add to cart',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(width: 30),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white),
            padding: EdgeInsets.all(10),
            child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
          )
        ],
      ),
    ),
  );
}