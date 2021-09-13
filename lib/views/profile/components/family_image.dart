import 'package:flutter/material.dart';

import '../../../core/core_shelf.dart';
import '../../../core/decoration/box_decoration.dart';

class FamilyImage extends StatelessWidget {
  const FamilyImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDeco().profileImageDeco(context),
      height: context.height * 25,
      width: context.height * 25,
    );
  }
}
