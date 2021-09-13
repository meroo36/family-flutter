import 'package:flutter/material.dart';

import '../core_shelf.dart';

class BoxDeco {
  BoxDecoration profileImageDeco(BuildContext context) {
    return BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.9),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 3),
        )
      ],
      color: Colors.grey,
      image: DecorationImage(
        fit: BoxFit.scaleDown,
        image: NetworkImage('https://www.mayocum.com/img/multy-user.png',
            scale: 4),
      ),
    );
  }

  BoxDecoration familyMemberDeco(BuildContext context, String imageUrl) {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey,
      image: DecorationImage(
        fit: BoxFit.scaleDown,
        image: NetworkImage(imageUrl, scale: 10),
      ),
    );
  }

  BoxDecoration familyMemberCardDeco(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.8),
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 2),
        )
      ],
      color: context.accent,
    );
  }
}
