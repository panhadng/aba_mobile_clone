// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget get abaLogo {
  return Row(
    children: [
      Text(
        'ABA',
        style: TextStyle(letterSpacing: 2.0),
      ),
      SizedBox(
        width: 5.0,
      ),
      Text(
        "'",
        style: TextStyle(color: Colors.red),
      ),
      SizedBox(
        width: 5.0,
      ),
      Text('Mobile'),
    ],
  );
}
