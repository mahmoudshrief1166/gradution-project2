import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        AlertDialog,
        AppBar,
        BorderSide,
        BuildContext,
        Builder,
        CircleAvatar,
        Color,
        Colors,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        ElevatedButton,
        FileImage,
        FontWeight,
        Form,
        FormState,
        GlobalKey,
        Icon,
        IconButton,
        Icons,
        ListTile,
        ListView,
        MainAxisAlignment,
        MaterialPageRoute,
        Navigator,
        Row,
        Scaffold,
        SizedBox,
        StadiumBorder,
        State,
        StatefulWidget,
        Text,
        TextEditingController,
        TextInputType,
        TextStyle,
        Theme,
        Widget,
        showDialog;
import 'package:graduitproject/screens/createAccount.dart';
import 'package:graduitproject/screens/profile.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});
  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailControler = TextEditingController();
  TextEditingController phoneControler = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController confirmPasswordControler = TextEditingController();
  TextEditingController statusControler = TextEditingController();
  TextEditingController passwordControler1 = TextEditingController();
  TextEditingController confirmPasswordControler1 = TextEditingController();
  bool visabilaty = true;
  String? gendeer;
  File? image1;
  int i = 0;
  void imagepic() async {
    final XFile? pickedimage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 150,
      imageQuality: 50,
    );
    if (pickedimage == null) {
      return;
    }
    setState(() {
      image1 = File(pickedimage.path);
    });
  }

  void imagepic1() async {
    final XFile? pickedimage1 = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 150,
      imageQuality: 50,
    );
    if (pickedimage1 == null) {
      return;
    }
    setState(() {
      image1 = File(pickedimage1.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(145, 104, 58, 1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(145, 104, 58, 1),
          ),
        ),
      ),
      body: Builder(builder: (ctx) {
        return ListView(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircleAvatar(
                          backgroundImage:
                              image1 != null ? FileImage(image1!) : null,
                          radius: 150,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: ctx,
                            builder: (BuildContext ctx) {
                              return AlertDialog(
                                actions: [
                                  ListTile(
                                    title: const Text(
                                      "Camera",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: const Icon(Icons.camera_alt),
                                    onTap: imagepic,
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "Gallery",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: const Icon(Icons.camera),
                                    onTap: imagepic1,
                                  ),
                                ],
                                contentPadding: const EdgeInsets.all(20),
                                title: const Text(
                                  "Please Choose one..",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(252, 231, 181, 125),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.camera_alt),
                      ),
                    ],
                  ),
                  Text_Field(
                    editingController: fullname,
                    hintText: "الاسـم الكامل",
                    icon: Icons.person,
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    suffixIcon: null,
                    validatorfun: (value) {
                      if (value!.isEmpty || value.length < 2) {
                        return "الاسـم غير صالح";
                      }
                      return null;
                    },
                  ),
                  Text_Field(
                    editingController: phoneControler,
                    hintText: "رقم الهاتف",
                    keyboardType: TextInputType.phone,
                    icon: Icons.phone,
                    obscureText: false,
                    suffixIcon: null,
                    validatorfun: (value) {
                      if (value!.isEmpty || value.length < 11) {
                        return "رقم هاتف غير صالح";
                      }

                      return null;
                    },
                  ),
                  Text_Field(
                    editingController: emailControler,
                    hintText: "بريدك الالكتروني",
                    icon: Icons.email_rounded,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: null,
                    validatorfun: (value) {
                      if (value!.isEmpty || !value.contains("@gmail")) {
                        return "بريد غير صالح";
                      }
                      return null;
                    },
                  ),
                  Text_Field(
                    editingController: passwordControler1,
                    hintText: "الرقم السـري",
                    keyboardType: TextInputType.name,
                    icon: Icons.password_sharp,
                    obscureText: visabilaty,
                    suffixIcon: IconButton(
                      icon: visabilaty
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: const Color.fromRGBO(145, 104, 58, 1),
                      onPressed: () {
                        setState(() {
                          visabilaty = !visabilaty;
                        });
                      },
                    ),
                    validatorfun: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return "كلمه المرور ضعيفه جدا";
                      }

                      return null;
                    },
                  ),
                  Text_Field(
                    editingController: confirmPasswordControler1,
                    hintText: "تاكيد الرقم السـري",
                    keyboardType: TextInputType.name,
                    icon: Icons.password_sharp,
                    obscureText: visabilaty,
                    suffixIcon: IconButton(
                      icon: visabilaty
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: const Color.fromRGBO(145, 104, 58, 1),
                      onPressed: () {
                        setState(() {
                          visabilaty = !visabilaty;
                        });
                      },
                    ),
                    validatorfun: (value) {
                      if (value != passwordControler1.text) {
                        return "كلمه المرور غير متطابقه";
                      }

                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ProfileScreen();
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
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
