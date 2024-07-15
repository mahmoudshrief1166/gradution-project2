import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:graduitproject/bloc/general_bloc_bloc.dart';
import 'package:graduitproject/screens/updateprofile.dart';
import 'package:graduitproject/theme/app_theme.dart';
import 'package:graduitproject/theme/bloc/theme_bloc.dart';
import 'package:graduitproject/wedgits/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              if (state is LoadedThemeState) {
                return IconButton(
                  onPressed: () {
                    if (state.themeindex == 1) {
                      context.read<ThemeBloc>().add(
                          const ThemeChangeEvent(theme: AppTheme.lightMode));
                    } else {
                      context.read<ThemeBloc>().add(
                          const ThemeChangeEvent(theme: AppTheme.darkMode));
                    }
                  },
                  icon: Icon(state.themeindex == 0
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode),
                  style: ButtonStyle(
                    iconColor: MaterialStateProperty.all(
                      Theme.of(context).primaryIconTheme.color,
                    ),
                  ),
                );
              }
              return Container(
                  // color: const Color.fromRGBO(45, 62, 78, 1),
                  );
            },
          ),
        ],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'profile name',
          style: TextStyle(
            fontFamily: "Tajawal",
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                      image: AssetImage(
                    'assets/images/sopol.jpg',
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Mahmoud Shrief",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "MahmoudShrief@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const UpdateProfile();
                      },
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromRGBO(145, 104, 58, 1)),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenu(
                icondata: Icons.settings,
                title: "Settings",
                onpress: () {},
                txtcolor: Colors.black,
              ),
              ProfileMenu(
                icondata: Icons.wallet,
                title: "Billing Information",
                onpress: () {},
                txtcolor: Colors.black,
              ),
              ProfileMenu(
                icondata: Icons.verified_user,
                title: "User Mangement",
                onpress: () {},
                txtcolor: Colors.black,
              ),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              ProfileMenu(
                icondata: Icons.info,
                title: "Information",
                onpress: () {},
                txtcolor: Colors.black,
              ),
              ProfileMenu(
                icondata: Icons.logout,
                endicon: false,
                title: "Log Out",
                onpress: () {},
                txtcolor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu(
      {super.key,
      required this.title,
      required this.icondata,
      required this.onpress,
      this.endicon = true,
      this.txtcolor});
  final String title;
  final IconData icondata;
  final VoidCallback onpress;
  final bool endicon;
  final Color? txtcolor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(145, 104, 58, 1),
        ),
        child: Icon(
          icondata,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, color: txtcolor),
      ),
      trailing: endicon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromRGBO(145, 104, 58, 1),
              ),
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            )
          : null,
    );
  }
}
