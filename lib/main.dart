import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/user_screen.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const UserScreen();
  }
}
