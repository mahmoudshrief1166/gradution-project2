import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:graduitproject/diohellper.dart';
import 'package:graduitproject/screens/HomePage.dart';
import 'package:graduitproject/screens/createAccount.dart';
import 'package:graduitproject/screens/forgetPassword.dart';
import 'package:graduitproject/screens/profile.dart';

enum Logintype { user, charity }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  bool visabilaty = true;
  bool isloggedin = false;
  String loginlable = "تسجيل الدخول";
  Logintype? logintype;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailControler.dispose();
    passwordControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "login",
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(33, 34, 45, 1),
          body: Stack(
            children: [
              Positioned(
                top: -MediaQuery.of(context).size.height / 2,
                right: MediaQuery.of(context).size.width / 5,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.25,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(145, 104, 58, 1),
                      shape: BoxShape.circle),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3,
                right: MediaQuery.of(context).size.width / 5,
                child: const Text(
                  "تسـجيل الدخول",
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 80,
                left: 10,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Text_Field(
                    editingController: emailControler,
                    hintText: "بريـدك الإلكتروني",
                    icon: Icons.email_rounded,
                    suffixIcon: null,
                    validatorfun: (value) {
                      if (value!.isEmpty || !value.contains("@gmail")) {
                        return "بريدك غير صالح  ";
                      }
                      return null;
                    },
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 180,
                left: 10,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Text_Field(
                      editingController: passwordControler,
                      hintText: "الـرقم السـري",
                      icon: Icons.password_sharp,
                      suffixIcon: IconButton(
                        icon: visabilaty
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            visabilaty = !visabilaty;
                          });
                        },
                      ),
                      validatorfun: (value) {
                        if (value!.isEmpty || value.length < 4) {
                          return "كلمة مرور غير صالحه";
                        }

                        return null;
                      },
                      obscureText: visabilaty,
                      keyboardType: TextInputType.name),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 280,
                left: 10,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: RadioListTile(
                    fillColor: MaterialStateProperty.all(
                      const Color.fromRGBO(145, 104, 58, 1),
                    ),
                    title: const Text(
                      "    تسجيل الدخول كفرد (متبرع)",
                      style: TextStyle(
                        fontFamily: "Tajawal",
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    value: Logintype.user,
                    groupValue: logintype,
                    onChanged: (Logintype? value) {
                      setState(
                        () {
                          logintype = value;
                        },
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 330,
                left: 10,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: RadioListTile(
                    title: const Text(
                      "تسجيل الدخول كجمعيه خيريه",
                      style: TextStyle(
                        fontFamily: "Tajawal",
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    value: Logintype.charity,
                    fillColor: MaterialStateProperty.all(
                      const Color.fromRGBO(145, 104, 58, 1),
                    ),
                    groupValue: logintype,
                    onChanged: (Logintype? value) {
                      setState(
                        () {
                          logintype = value;
                        },
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 400,
                right: 10,
                child: Builder(builder: (ctx) {
                  return ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(145, 104, 58, 1)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15))),
                    child: Text(
                      loginlable,
                      style: const TextStyle(
                        fontFamily: "Tajawal",
                        color: Colors.white,
                        fontSize: 23,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () async {
                      if (passwordControler.text.isNotEmpty &&
                          emailControler.text.isNotEmpty &&
                          emailControler.text.contains("@") &&
                          logintype != null) {
                        try {
                          setState(() {
                            loginlable = "...جار التسجيل";
                          });
                          String? url;
                          if (logintype == Logintype.user) {
                            url = 'users/auth';
                          } else {
                            url = 'charities/auth';
                          }
                          DioHelper.PostData(
                            url: url,
                            postdata: {
                              "email": emailControler.text.trim(),
                              "password": passwordControler.text
                            },
                          ).then((value) {
                            print("Login Successfully");
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          }).catchError((e) {
                            print(e.toString());
                            setState(() {
                              loginlable = "تسجيل الدخول";
                            });
                            showDialog(
                                context: context,
                                builder: (ctx) {
                                  return AlertDialog(
                                    elevation: 3,
                                    shadowColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    content: const Text(
                                      "خطأ في تسجيل الدخول",
                                      style: TextStyle(
                                        fontFamily: "Tajawal",
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  );
                                });
                          });
                        } catch (e) {
                          print(e);
                        }
                      } else {
                        showDialog(
                            context: context,
                            builder: (ctx) {
                              return AlertDialog(
                                elevation: 3,
                                shadowColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                content: const Text(
                                  "بريدك الالكتروني غير صالح ",
                                  style: TextStyle(
                                    fontFamily: "Tajawal",
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            });
                      }
                    },
                  );
                }),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 400,
                child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10))),
                  child: const Text(
                    " سجل الأن",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      color: Color.fromRGBO(145, 104, 58, 1),
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationStyle: TextDecorationStyle.solid,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Regist_Screen(),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 + 470,
                right: MediaQuery.of(context).size.width / 5,
                child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10))),
                  child: const Text(
                    "نسيت كلمه السر ؟",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      color: const Color.fromRGBO(145, 104, 58, 1),
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

Widget Text_Field(
    {required TextEditingController? editingController,
    required String? hintText,
    required IconData? icon,
    required Widget? suffixIcon,
    required String? Function(String?)? validatorfun,
    required bool? obscureText,
    required TextInputType? keyboardType}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
    child: TextFormField(
        obscureText: obscureText!,
        keyboardType: keyboardType,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.white),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromRGBO(145, 104, 58, 1)),
            borderRadius: BorderRadius.circular(23),
          ),
          border: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromRGBO(145, 104, 58, 1)),
            borderRadius: BorderRadius.circular(23),
          ),
          hintText: hintText,
          errorStyle: const TextStyle(
            fontFamily: "Tajawal",
            fontSize: 18,
          ),
          hintStyle: const TextStyle(
              fontFamily: "Tajawal",
              fontSize: 18,
              color: const Color.fromRGBO(145, 104, 58, 1)),
          hintTextDirection: TextDirection.rtl,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(
            icon,
            color: const Color.fromRGBO(145, 104, 58, 1),
          ),
        ),
        controller: editingController,
        validator: validatorfun),
  );
}
