import 'package:flutter/material.dart';

import 'package:graduitproject/screens/login.dart';

import '../diohellper.dart';
import 'HomePage.dart';

enum gender { male, female }

class Regist_Screen extends StatefulWidget {
  const Regist_Screen({super.key});

  @override
  State<Regist_Screen> createState() => _Regist_ScreenState();
}

class _Regist_ScreenState extends State<Regist_Screen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailControler = TextEditingController();
  TextEditingController phoneControler = TextEditingController();
  TextEditingController firstnameControler = TextEditingController();
  TextEditingController secondnameControler = TextEditingController();
  TextEditingController statusControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController confirmPasswordControler = TextEditingController();
  bool visabilaty = true;
  gender? _gender;
  String? gendeer;

  @override
  void dispose() {
    super.dispose();
    emailControler.dispose();
    passwordControler.dispose();
    confirmPasswordControler.dispose();
    statusControler.dispose();
    firstnameControler.dispose();
    secondnameControler.dispose();
    phoneControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage('assets/images/sopol.jpg'),
                height: 100,
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                child: Center(
                  child: Text(
                    "انشـاء حسـاب",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text_Field(
                editingController: firstnameControler,
                hintText: "الاسـم الاول",
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
                editingController: secondnameControler,
                hintText: "اسـم العائله",
                icon: Icons.person,
                keyboardType: TextInputType.name,
                obscureText: false,
                suffixIcon: null,
                validatorfun: (value) {
                  if (value!.isEmpty || value.length < 2) {
                    return "الاسـم غير صالح";
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
                editingController: passwordControler,
                hintText: "الرقم السـري",
                keyboardType: TextInputType.name,
                icon: Icons.password_sharp,
                obscureText: visabilaty,
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
                  if (value!.isEmpty || value.length < 7) {
                    return "كلمه المرور ضعيفه جدا";
                  }

                  return null;
                },
              ),
              Text_Field(
                editingController: confirmPasswordControler,
                hintText: "تاكيد الرقم السـري",
                keyboardType: TextInputType.name,
                icon: Icons.password_sharp,
                obscureText: visabilaty,
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
                  if (value != passwordControler.text) {
                    return "كلمه المرور غير متطابقه";
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Radio<gender>(
                          value: gender.male,
                          groupValue: _gender,
                          onChanged: (gender? value) {
                            setState(() {
                              _gender = value;
                              if (_gender == gender.female) {
                                gendeer = "female";
                              } else {
                                gendeer = "male";
                              }
                            });
                          }),
                      const Text(
                        "ذكـر",
                        style: TextStyle(
                          fontFamily: "Tajawal",
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<gender>(
                          value: gender.female,
                          groupValue: _gender,
                          onChanged: (gender? value) {
                            setState(() {
                              _gender = value;
                              if (_gender == gender.female) {
                                gendeer = "female";
                                print(gendeer);
                              } else {
                                gendeer = "male";
                                print(gendeer);
                              }
                            });
                          }),
                      const Text(
                        "انثـي",
                        style: TextStyle(
                          fontFamily: "Tajawal",
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Builder(builder: (ctx) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 37, 37, 37)),
                  child: MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate() || gendeer != null) {
                        try {
                          DioHelper.PostData(
                            url: 'users',
                            postdata: {
                              "name.firstName":
                                  firstnameControler.text.trim().toString(),
                              "name.lastName":
                                  secondnameControler.text.trim().toString(),
                              "email": emailControler.text.trim().toString(),
                              "password": passwordControler.text.toString(),
                              "phone": phoneControler.text.trim().toString(),
                              "gender": gendeer,
                              "location.governorate": "Cairo"
                            },
                          ).then((value) {
                            print("registed Successfully");
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }).catchError((e) {
                            print("an error");
                            print(e.toString());
                          });
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: const Text(
                      "سجل الان",
                      style: TextStyle(
                        fontFamily: "Tajawal",
                        color: Colors.white,
                        fontSize: 23,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  "لديـك حسـاب ؟",
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Color.fromRGBO(145, 104, 58, 1)),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromRGBO(145, 104, 58, 1)),
            borderRadius: BorderRadius.circular(25),
          ),
          border: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromRGBO(145, 104, 58, 1)),
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: hintText,
          errorStyle: const TextStyle(
            fontFamily: "Tajawal",
            fontSize: 18,
          ),
          hintStyle: const TextStyle(
              fontFamily: "Tajawal",
              fontSize: 18,
              color: Color.fromRGBO(145, 104, 58, 1)),
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
