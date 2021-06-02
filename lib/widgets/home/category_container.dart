import 'package:flutter/material.dart';

Widget categoryContainer(context, color, image, category) {
  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          image,
          height: 20,
        ),
      ),
      Text(category)
    ],
  );
}