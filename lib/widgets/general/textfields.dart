import 'package:flutter/material.dart';

Widget textFieldContainer(context, hint, icon, onSaved) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.5),
      borderRadius: BorderRadius.circular(20),
    ),
    width: MediaQuery.of(context).size.width,
    child: TextFormField(
      onSaved: onSaved,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        border: InputBorder.none,
      ),
    ),
  );
}

Widget textFieldWithController(context, controller, hint, icon) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.5),
      borderRadius: BorderRadius.circular(20),
    ),
    width: MediaQuery.of(context).size.width,
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        border: InputBorder.none,
      ),
    ),
  );
}
