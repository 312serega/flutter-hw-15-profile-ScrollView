import 'package:flutter/material.dart';

import '../../../constants/user_colors.dart';

class UserBtnItem extends StatelessWidget {
  const UserBtnItem(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.index,
      required this.currentIndex})
      : super(key: key);
  final String title;
  final int index;
  final int currentIndex;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          index == currentIndex ? UserColor.violet500 : const Color(0xff929292),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          index == currentIndex ? UserColor.violet50 : const Color(0xffEBEBEB),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(68),
            side: BorderSide(
                color: index == currentIndex
                    ? UserColor.violet100
                    : const Color(0xffEBEBEB),
                width: 2),
          ),
        ),
      ),
    );
  }
}
