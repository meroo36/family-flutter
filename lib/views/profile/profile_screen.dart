import 'package:family_flutter/views/profile/components/family_image.dart';
import 'package:family_flutter/views/profile/components/family_name.dart';
import 'package:family_flutter/views/profile/components/member_card.dart';
import 'package:flutter/material.dart';

import '../../core/core_shelf.dart';
import '../../core/decoration/box_decoration.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<dynamic> membersList = [
    {
      'name': 'Mert Doğruca',
      'imageUrl':
          'https://previews.123rf.com/images/in8finity/in8finity1511/in8finity151100059/48956683-boy-baby-face-icon-logo-vector-illustration.jpg',
    }
  ];
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Family'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),
      ),
      body: Container(
        padding: context.mediumPadding,
        width: context.width * 100,
        height: context.height * 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FamilyImage(),
            SizedBox(
              height: context.height * 3,
            ),
            FamilyName(),
            SizedBox(
              height: context.height * 3,
            ),
            Text(
              'Family Members:',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: context.height * 40,
              padding: context.lowPadding,
              child: ListView.builder(
                controller: scrollController,
                itemCount: membersList.length + 1,
                itemBuilder: (context, i) {
                  if (i == membersList.length) {
                    return Container(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            membersList.add({
                              'name': 'Test Baby',
                              'imageUrl':
                                  'https://previews.123rf.com/images/in8finity/in8finity1511/in8finity151100059/48956683-boy-baby-face-icon-logo-vector-illustration.jpg'
                            });
                            scrollController.animateTo(
                                scrollController.position.pixels + 120,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          });
                        },
                        child: Icon(
                          Icons.add,
                          size: 50,
                        ),
                      ),
                    );
                  } else {
                    return MemberCard(
                      index: i,
                      membersList: membersList,
                      imageUrl: membersList[i]['imageUrl'],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
