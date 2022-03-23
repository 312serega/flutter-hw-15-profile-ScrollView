import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/constants/user_text_style.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_btn_item.dart';

import '../../../constants/user_colors.dart';

class UserBtnList extends StatefulWidget {
  const UserBtnList({Key? key}) : super(key: key);

  @override
  State<UserBtnList> createState() => _UserBtnListState();
}

class _UserBtnListState extends State<UserBtnList> {
  List<String> level = [
    'Black',
    'Bold',
    'Medium',
    'Regular',
    'Light',
    'Thin',
    'Other',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Text(
            'Select type',
            style: UserTextStyle.fontSize16W400Black,
          ),
        ),
        SizedBox(
          height: 32,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: level.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            itemBuilder: (context, index) => UserBtnItem(
              title: level[index],
              index: index,
              currentIndex: selectedIndex,
              onPressed: () {
                selectedIndex = index;
                setState(() {});
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Divider(
          height: 1,
          thickness: 1,
          indent: 16,
          endIndent: 16,
          color: UserColor.lightGreyOpacity,
        ),
      ],
    );
  }
}
