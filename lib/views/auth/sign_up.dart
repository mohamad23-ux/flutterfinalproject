import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/model/auth/register_model.dart';
import 'package:mym/services/auth/auth_services.dart';
import 'package:mym/views/auth/login_view.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            width: double.infinity,
            height: double.infinity,
            color: maincolor,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 30, bottom: 8),
                alignment: Alignment.center,
                child: const Text(
                  ' مستخدم جديد ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 49, fontFamily: 'main'),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                color:
                    Color.fromARGB(255, 255, 255, 255), // لون الخلفية للحاوية
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120), // نصف قطر الحد الأعلى الأيسر
                  topRight: Radius.circular(120), // نصف قطر الحد الأعلى الأيمن
                ),
                // إضافة الظل إذا أردت
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(25),
                    child: Icon(
                      Icons.person,
                      color: maincolor,
                      size: 33,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    width: 350,
                    child: TextField(
                      controller: usernameController,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(color: maincolor),
                        ),
                        labelText: 'الاسم',
                        labelStyle: const TextStyle(fontFamily: 'main'),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: maincolor),
                        ),
                        labelText: 'كلمة السر',
                        labelStyle: const TextStyle(
                          fontFamily: 'main',
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    width: 350,
                    child: TextField(
                      controller: confirmPasswordController,
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: maincolor),
                        ),
                        labelText: 'تأكيد كلمة السر',
                        labelStyle: const TextStyle(
                          fontFamily: 'main',
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () async {
                      try {
                        AuthentcationServices authentcationServices =
                            AuthentcationServices();
                        await authentcationServices.register(
                          Register(
                            name: usernameController.text,
                            password: passwordController.text,
                            confirmPassword: confirmPasswordController.text,
                          ),
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Container(
                      width: 275,
                      height: 55,
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(56, 31, 154, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'انشاء حساب',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'main',
                              fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 275,
                    height: 55,
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 31, 154, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'الرجــــوع',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'main',
                              fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
