import 'package:flutter/material.dart';
import '../../screens/cart_page.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    actions: [
      Icon(Icons.search),
      IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag))
    ],
  );
}

PreferredSizeWidget appBarWithTitle(context, title) {
  return AppBar(
    leading: IconButton(
      onPressed: Navigator.of(context).pop,
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
  );
}

PreferredSize appBarwithImage(
    context, leadingOnPressed, actionOnPressed, image) {
  return PreferredSize(
    preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.4),
    child: AppBar(
      elevation: 0,
      flexibleSpace: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.scaleDown),
          ),
        ),
      ),
      backgroundColor: Colors.amber.withOpacity(0.3),
      leading: IconButton(
          onPressed: leadingOnPressed, icon: Icon(Icons.arrow_back_ios)),
      actions: [
        IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>CartPage()));}, icon: Icon(Icons.shopping_bag_outlined))
      ],
    ),
  );
}
