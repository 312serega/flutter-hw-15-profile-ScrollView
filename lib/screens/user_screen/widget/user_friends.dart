import 'package:flutter/material.dart';
import '../../../constants/user_text_style.dart';
import '../../../model/user_modal.dart';

class UserFriends extends StatelessWidget {
  const UserFriends({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(user.image),
      ),
      title: Text(
        '${user.name} ${user.lastname}',
        style: UserTextStyle.fontSize16W400Black,
      ),
      subtitle: Text(
        user.position,
        style: UserTextStyle.font14W400Grey,
      ),
      trailing: const InkWell(
        child: Icon(
          Icons.close,
          color: Color(0xffCF6679),
        ),
      ),
    );
  }
}


// Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         children: [
          // CircleAvatar(
          //   radius: 20,
          //   backgroundImage: AssetImage(user.image),
          // ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 18),
//                 Text(
//                   '${user.name} ${user.lastname}',
//                   style: UserTextStyle.fontSize16W400Black,
//                 ),
                // Text(
                //   user.position,
                //   style: UserTextStyle.font14W400Grey,
                // ),
//                 const SizedBox(height: 18),
//                 const Divider(
//                   height: 1,
//                   color: UserColor.lightGreyOpacity,
//                 ),
//               ],
//             ),
//           ),
          // const InkWell(
          //   child: Icon(
          //     Icons.close,
          //     color: Color(0xffCF6679),
          //   ),
          // ),
//         ],
//       ),
//     );