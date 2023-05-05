import 'package:flutter/material.dart';

AppBar CustomAppBar({String ? title}) {
  return AppBar(
    centerTitle: true,
    title:  Text(
      title ?? '',
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
    ),
    actions: const [
      Icon(Icons.messenger),
      SizedBox(
        width: 10,
      ),
    ],
  );
}