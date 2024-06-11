import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/resetPassword_View.dart';
import 'package:mym/views/signin_View.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: double.infinity,
              color: maincolor,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(12),
                  alignment: Alignment.center,
                  child: Text(
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
              decoration: BoxDecoration(
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
                    margin: EdgeInsets.all(25),
                    child: Icon(
                      Icons.login_sharp,
                      color: maincolor,
                      size: 33,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    width: 350,
                    child: TextField(
                      style: TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'الاسم',
                        labelStyle: TextStyle(fontFamily: 'main'),
                        border: OutlineInputBorder(
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
                    margin: EdgeInsets.all(20),
                    width: 350,
                    child: TextField(
                      obscureText: obscureTextnow,
                      keyboardType: TextInputType.none,
                      style: TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: maincolor),
                        ),
                        labelText: 'كلمة السر',
                        suffixIcon: IconButton(
                          icon: Icon(obscureTextnow
                              ? Icons.visibility
                              : Icons.visibility_off), // تبديل الأيقونة
                          onPressed: () {
                            setState(() {
                              obscureTextnow =
                                  !obscureTextnow; // تغيير حالة الإظهار/الإخفاء
                            });
                          },
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'main',
                        ),
                        border: OutlineInputBorder(
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
                    margin: EdgeInsets.all(25),
                    child: Text(
                      'هل نسيت كلمة السر ؟ ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'main',
                          color: Color.fromRGBO(42, 35, 255, 1)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 275,
                    height: 55,
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(56, 31, 154, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => resetpasswordView(),
                              ));
                        },
                        child: Text(
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
                                builder: (context) => signinview()),
                          );
                        },
                        child: Text('انشاء حساب ',
                            style: TextStyle(
                                fontFamily: 'main',
                                fontWeight: FontWeight.bold)),
                      ),
                      Text(
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
