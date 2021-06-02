import 'package:flutter/material.dart';

Widget homePagecategory(label, onPressed) {
  return Row(
    children: [
      Text(
        label,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(5),
          color: Colors.grey,
          child: Text(
            'Explore All',
            style: TextStyle(fontSize: 12),
          ),
        ),
      )
    ],
  );
}