import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/login_view.dart';

class signinview extends StatelessWidget {
  const signinview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              color: maincolor,
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                    'إنشـاء مستخدم جديد',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: 35, fontFamily: 'main'),
                  ),
                ],
              )),
          SingleChildScrollView(
            child: Container(
              height: 550,
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
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Icon(
                      Icons.person,
                      color: maincolor,
                      size: 33,
                    ),
                  ),
                  Container(
                    width: 350,
                    child: TextField(
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
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'كلمة السر',
                        labelStyle: TextStyle(
                          fontFamily: 'main',
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'تأكيد كلمة السر',
                        labelStyle: TextStyle(
                          fontFamily: 'main',
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                      ),
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => login()),
                          );
                        },
                        child: Text(
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
