import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/resources/resources.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_btn_list.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_btn_outline.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_friends.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_info.dart';

import '../../constants/user_colors.dart';
import '../../constants/user_text_style.dart';
import '../../model/user_modal.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final listUser = User.getUser();

  final List<String> images = [
    ImagesSrc.media1,
    ImagesSrc.media2,
    ImagesSrc.media3,
    ImagesSrc.media4,
    ImagesSrc.media5,
    ImagesSrc.media6,
    ImagesSrc.media7,
    ImagesSrc.media8,
    ImagesSrc.media9,
  ];
  String activeBtn = 'media_remove';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    )),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                const UserInfo(),
                const UserBtnList(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
                  child: Text(
                    'Friends',
                    style: UserTextStyle.fontSize16W400Black,
                  ),
                ),
                ...List.generate(
                  listUser.length,
                  (index) => UserFriends(
                    user: listUser[index],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 22, bottom: 16),
                  child: UserBtnOutline(
                    title: 'Add friend',
                    btnIcon: Icons.add,
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                  color: UserColor.lightGreyOpacity,
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'My media',
                    style: UserTextStyle.font24Normal,
                  ),
                ),
              ]),
            ),
            SliverGrid(
              delegate: SliverChildListDelegate([
                ...List.generate(
                  listUser.length,
                  (index) => Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image(
                          width: double.infinity,
                          fit: BoxFit.cover,
                          image: AssetImage(images[index]),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: UserColor.red200,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.close),
                              color: Colors.white,
                              splashRadius: 25,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 100,
                mainAxisSpacing: 13,
                crossAxisSpacing: 17,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: UserBtnOutline(
                        title: 'Delete',
                        bgColor: 'media_remove' == activeBtn
                            ? UserColor.violet500
                            : Colors.white,
                        borderColor: 'media_remove' == activeBtn
                            ? UserColor.violet500
                            : UserColor.lightGreyOpacity,
                        textColor: 'media_remove' == activeBtn
                            ? Colors.white
                            : UserColor.violet500,
                        onPressed: () {
                          activeBtn = 'media_remove';
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: UserBtnOutline(
                        title: 'Add',
                        bgColor: 'media_add' == activeBtn
                            ? UserColor.violet500
                            : Colors.white,
                        borderColor: 'media_add' == activeBtn
                            ? UserColor.violet500
                            : UserColor.lightGreyOpacity,
                        textColor: 'media_add' == activeBtn
                            ? Colors.white
                            : UserColor.violet500,
                        onPressed: () {
                          activeBtn = 'media_add';
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
