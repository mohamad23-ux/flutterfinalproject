import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/mainWidgets/main_View.dart';

class resetpasswordView extends StatelessWidget {
  const resetpasswordView({super.key});

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
              child: const Column(
                children: [
                  SizedBox(
                    height: 160,
                  ),
                  Text(
                    'تغيير كلمة السر  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: 49, fontFamily: 'main'),
                  ),
                ],
              )),
          SingleChildScrollView(
            child: Container(
              height: 550,
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
                      Icons.login_sharp,
                      color: maincolor,
                      size: 33,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(19),
                    width: 350,
                    child: TextField(
                      style: const TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'كلمة السر الجديدة',
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
                    margin: const EdgeInsets.all(19),
                    width: 350,
                    child: TextField(
                      style: const TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: ' تأكيد كلمة السر',
                        labelStyle: const TextStyle(
                          fontFamily: 'main',
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
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
                        onTap: () {
                          print('you should make an api here');
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mainview(),
                                ));
                          },
                          child: const Text(
                            'تغيير كلمة المرور',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'main',
                                fontSize: 19),
                          ),
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
