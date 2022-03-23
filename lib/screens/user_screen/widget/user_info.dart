import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/constants/user_colors.dart';
import 'package:flutter_hw_11_profile/constants/user_img_src.dart';
import 'package:flutter_hw_11_profile/constants/user_text_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Stack(
            children: [
              const CircleAvatar(
                radius: 59,
                backgroundImage: AssetImage(UserImgSrc.userAvatar),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: UserColor.violet500,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                      splashRadius: 25,
                      iconSize: 18,
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Tiana Rosser',
            style: UserTextStyle.fontSize16W400Black.copyWith(height: 1.5),
          ),
          Text(
            'Developer',
            style: UserTextStyle.font12W400Grey.copyWith(height: 1.33),
          ),
          const SizedBox(height: 24),
          const Divider(
            height: 1,
            thickness: 1,
            color: UserColor.lightGreyOpacity,
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
