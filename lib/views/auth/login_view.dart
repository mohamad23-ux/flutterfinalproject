import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/model/auth/login_model.dart';
import 'package:mym/services/auth/auth_services.dart';
import 'package:mym/views/auth/resetPassword_View.dart';
import 'package:mym/views/auth/sign_up.dart';
import 'package:mym/views/mainWidgets/main_View.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool obscureTextnow = true;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: maincolor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: double.infinity,
              color: maincolor,
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 8),
                  alignment: Alignment.center,
                  child: const Text(
                    'أهلاً وسهلاً',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: 49, fontFamily: 'main'),
                  ),
                ),
              )),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.only(top: 5, bottom: 12),
                      child: Image.asset('asset/images/logo.png')),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    width: 350,
                    child: TextField(
                      controller: usernameController,
                      style: const TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'الاسم',
                        labelStyle: const TextStyle(fontFamily: 'main'),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      obscureText: obscureTextnow,
                      keyboardType: TextInputType.none,
                      style: const TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: maincolor),
                        ),
                        labelText: 'كلمة السر',
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscureTextnow
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ), // تبديل الأيقونة
                          onPressed: () {
                            setState(() {
                              obscureTextnow =
                                  !obscureTextnow; // تغيير حالة الإظهار/الإخفاء
                            });
                          },
                        ),
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
                    margin: const EdgeInsets.only(top: 15, bottom: 15),
                    child: const Text(
                      'هل نسيت كلمة السر ؟ ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'main',
                          color: Color.fromRGBO(42, 35, 255, 1)),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
                        onTap: () async {
                          AuthentcationServices authServices =
                              AuthentcationServices();
                          try {
                            await authServices.login(
                              Login(
                                name: usernameController.text,
                                password: passwordController.text,
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mainview()),
                            );
                          } catch (e) {
                            print(e);
                            // Todo: handle bad request on ui
                          }
                        },
                        child: const Text(
                          'تسجــيـل دخــول',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'main',
                              fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  SignUpPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'انشاء حساب ',
                          style: TextStyle(
                            fontFamily: 'main',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(
                        'لا تملك حساب ؟',
                        style: TextStyle(fontFamily: 'main'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
