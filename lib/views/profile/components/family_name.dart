import 'package:flutter/material.dart';

class FamilyName extends StatelessWidget {
  const FamilyName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Test Family Name',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
