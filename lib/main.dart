

import 'package:carrot_market_clone/screens/main_screens.dart';
import 'package:carrot_market_clone/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarrotMarketUI());


}


class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: MainScreens(),
    );
  }
}
