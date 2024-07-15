import 'package:flutter/material.dart';
import 'package:graduitproject/model/user_info_model.dart';

class Profile_Widget extends StatelessWidget {
  const Profile_Widget({super.key, required this.user_info});
  final List<User_info> user_info;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: user_info.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Text(user_info[index].name["firstName"]),
        );
      },
    );
  }
}
