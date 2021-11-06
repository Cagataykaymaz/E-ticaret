
  import 'package:flutter/material.dart';

Widget label(String discount) {
    return Container(
          width: double.infinity,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFFE0ECF8),
          ),
          child: Text(
            discount,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF1F53E4), fontSize: 12),
          ),
        );

  }
