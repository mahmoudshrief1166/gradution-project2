import 'package:flutter/material.dart';

import '../diohellper.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailControler = TextEditingController();
  TextEditingController tokenControler = TextEditingController();
  TextEditingController newpasswordControler = TextEditingController();
  String lable = "أستعاده";
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
                height: 60,
              ),
              const Image(
                image: AssetImage('assets/images/sopol.jpg'),
                height: 100,
              ),
              const SizedBox(
                height: 17,
              ),
              const Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Center(
                  child: Text(
                    "استعاده الحساب",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text_Field(
                editingController: emailControler,
                hintText: "بريدك الالكتروني",
                icon: Icons.email,
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
              Builder(
                builder: (ctx) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: MaterialButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          try {
                            setState(() {
                              lable = "...جار التحميل";
                            });
                            DioHelper.PostData(
                              url: 'users/reset',
                              postdata: {
                                "email": emailControler.text.trim(),
                              },
                            ).then((value) {
                              if (value!.statusCode == 200) {
                                print(value);
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (ctx) {
                                      return AlertDialog(
                                        elevation: 3,
                                        shadowColor: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        content: SizedBox(
                                          height: 300,
                                          width: 500,
                                          child: Column(
                                            children: [
                                              const Text(
                                                "اعاده التعيين ",
                                                style: TextStyle(
                                                  fontFamily: "Tajawal",
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              TextField(
                                                controller: tokenControler,
                                                decoration: InputDecoration(
                                                  labelStyle: const TextStyle(
                                                      color: Colors.black),
                                                  enabled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            23),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            23),
                                                  ),
                                                  hintText: "كود التاكيد",
                                                  errorStyle: const TextStyle(
                                                    fontFamily: "Tajawal",
                                                    fontSize: 18,
                                                  ),
                                                  hintStyle: const TextStyle(
                                                      fontFamily: "Tajawal",
                                                      fontSize: 18,
                                                      color: Colors.black),
                                                  hintTextDirection:
                                                      TextDirection.rtl,
                                                  prefixIcon: const Icon(
                                                    Icons.confirmation_num,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              TextField(
                                                controller:
                                                    newpasswordControler,
                                                decoration: InputDecoration(
                                                  labelStyle: const TextStyle(
                                                      color: Colors.black),
                                                  enabled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            23),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            23),
                                                  ),
                                                  hintText: "كلمه السر الجديده",
                                                  errorStyle: const TextStyle(
                                                    fontFamily: "Tajawal",
                                                    fontSize: 18,
                                                  ),
                                                  hintStyle: const TextStyle(
                                                      fontFamily: "Tajawal",
                                                      fontSize: 18,
                                                      color: Colors.black),
                                                  hintTextDirection:
                                                      TextDirection.rtl,
                                                  prefixIcon: const Icon(
                                                    Icons.password,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  MaterialButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                    color: Colors.black,
                                                    onPressed: () {
                                                      setState(() {
                                                        lable = "أستعاده";
                                                      });
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text(
                                                      "الغاء",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  MaterialButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                    color: Colors.black,
                                                    onPressed: () {
                                                      try {
                                                        setState(() {
                                                          lable = "أستعاده";
                                                        });
                                                        DioHelper.PostData(
                                                          url:
                                                              'users/reset/confirm',
                                                          postdata: {
                                                            "email":
                                                                emailControler
                                                                    .text
                                                                    .trim(),
                                                            "password":
                                                                newpasswordControler
                                                                    .text
                                                                    .trim(),
                                                            "token":
                                                                tokenControler
                                                                    .text
                                                                    .trim(),
                                                          },
                                                        ).then((value) {
                                                          ScaffoldMessenger.of(
                                                                  ctx)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                "تم التغيير بنجاح",
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      "Tajawal",
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                          /*  Timer(
                                                              const Duration(
                                                                  seconds: 2),
                                                              () {
                                                            Navigator.of(
                                                                    context)
                                                                .pushReplacement(
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        HomePage(),
                                                              ),
                                                            );
                                                          });*/
                                                        });
                                                      } catch (e) {
                                                        print(e);
                                                      }
                                                    },
                                                    child: const Text(
                                                      "أستعاده",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              }
                            });
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                      child: Text(
                        lable,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
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
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.white),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(23),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(23),
          ),
          hintText: hintText,
          errorStyle: const TextStyle(
            fontFamily: "Tajawal",
            fontSize: 18,
          ),
          hintStyle: const TextStyle(
              fontFamily: "Tajawal", fontSize: 18, color: Colors.white),
          hintTextDirection: TextDirection.rtl,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        controller: editingController,
        validator: validatorfun),
  );
}
