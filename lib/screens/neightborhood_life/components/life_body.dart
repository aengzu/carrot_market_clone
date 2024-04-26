import 'package:carrot_market_clone/models/neighborhood_life.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../theme.dart';
import '../../components/image_container.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;
  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xffd4d5dd)),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),

          _buildTail(neighborhoodLife.commentCount)
        ],
      ),

    );
  }

  Padding _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
           padding: EdgeInsets.all(4),
           decoration: const BoxDecoration(
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.all(Radius.circular(4)),
             color: Color.fromRGBO(247,247,247,1),
           ),
           child: Text(
             neighborhoodLife.category, style: textTheme().bodyMedium,
           ),
         ),
         Text(
           neighborhoodLife.date,
           style: textTheme().bodyMedium,
         )
       ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 15,
            imageURl: neighborhoodLife.profileImgUri,
          ),
          Text.rich(TextSpan(
            children: [
              TextSpan(
                text: ' ${neighborhoodLife.userName}',
                style: textTheme().bodyLarge,
              ),
              TextSpan(
                text: ' ${neighborhoodLife.location}',
              ),
              TextSpan(
                text: ' 인증 ${neighborhoodLife.authCount}회',
              ),
            ]

          )),
        ],

      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme().bodyLarge,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),

      ),
    );
  }

  _buildImage() {
    return Visibility(
        visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.smile,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(width: 8),
          Text(
            '공감하기',
              style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(width:22),
          Icon(
            FontAwesomeIcons.commentAlt,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(width: 8),
          Text(
              "${"댓글쓰기"} $commentCount",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      )
    );
  }
}
