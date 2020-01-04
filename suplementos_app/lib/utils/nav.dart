import 'package:flutter/material.dart';

Future push(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return page;
  }));
}