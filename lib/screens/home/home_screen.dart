import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('만년동'),
            SizedBox(width: 4.0),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search), onPressed: () {},),
          IconButton(
            icon: const Icon(CupertinoIcons.list_dash), onPressed: () {},),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {},),
        ],
        bottom: const PreferredSize(preferredSize: Size.fromHeight(0.5),
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey)),


      ),
      body: Container(),
    );
  }
}

