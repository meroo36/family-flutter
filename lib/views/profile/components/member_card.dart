import 'package:flutter/material.dart';

import '../../../core/core_shelf.dart';
import '../../../core/decoration/box_decoration.dart';

class MemberCard extends StatelessWidget {
  const MemberCard(
      {Key? key,
      required this.index,
      required this.membersList,
      required this.imageUrl})
      : super(key: key);

  final List membersList;
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.lowPadding,
      decoration: BoxDeco().familyMemberCardDeco(context),
      width: context.width * 100,
      height: context.height * 11,
      child: Row(
        children: [
          Container(
            margin: context.mediumPadding,
            decoration: BoxDeco().familyMemberDeco(context, imageUrl),
            height: context.height * 10,
            width: context.height * 10,
          ),
          Container(
              width: context.width * 40,
              child: Text(membersList[index]['name'])),
          Container(
            height: 40,
            child: Image.asset('assets/logo/pencil.png'),
          ),
        ],
      ),
    );
  }
}
