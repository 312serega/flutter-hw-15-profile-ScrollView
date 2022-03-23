import 'package:flutter/material.dart';

import '../../../constants/user_colors.dart';

class UserBtnOutline extends StatelessWidget {
  const UserBtnOutline({
    Key? key,
    required this.title,
    this.bgColor,
    this.textColor,
    this.borderColor,
    this.btnIcon,
    this.onPressed,
  }) : super(key: key);
  final String title;

  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final IconData? btnIcon;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(
          bgColor ?? Colors.white,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          textColor ?? Colors.black,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: borderColor ?? UserColor.lightGreyOpacity,
              width: 1,
            ),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          if (btnIcon != null) const SizedBox(width: 13),
          if (btnIcon != null) Icon(btnIcon, size: 22),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
// id == selectId ? '321' : '123',