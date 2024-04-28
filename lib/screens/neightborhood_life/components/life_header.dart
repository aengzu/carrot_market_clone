import 'package:carrot_market_clone/models/neighborhood_life.dart';
import 'package:carrot_market_clone/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/image_container.dart';

class LifeHeader extends StatelessWidget {
  const LifeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
        children: [
          const ImageContainer(
            borderRadius: 6.0,
            imageURl: 'https://picsum.photos/id/237/200/100',
            width: 45.0,
            height: 45.0,
          ),
          const SizedBox(width: 16.0),
          Expanded(child: Text(
            lifeTitle,
            style: textTheme().bodyLarge,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),),
        ],
      ),
      ),

    );
  }
}
