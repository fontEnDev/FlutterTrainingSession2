import 'package:flutter/material.dart';
import 'package:training/mycart/my_cart.dart';

import 'mycart/new_card_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewCart();
  }
}
