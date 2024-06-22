import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/auth/login_view.dart';
import 'package:mym/views/mainWidgets/main_View.dart';
import 'package:mym/views/mainWidgets/paymentvoucher_View.dart';

class recVoucher extends StatefulWidget {
  const recVoucher({super.key});

  @override
  State<recVoucher> createState() => _recVoucherState();
}

var recVoucherMoney = TextEditingController();
var recVoucherKind = TextEditingController();
var recVoucherDetails = TextEditingController();

class _recVoucherState extends State<recVoucher> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset:
                false, // تعطيل تغيير حجم الشاشة عند فتح لوحة المفاتيح

            body: Column(children: [
              myAppBar('سند القبــض', context),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: ListView(
                    children: [
                      Container(
                        margin: MediaQuery.of(context).size.width > 450
                            ? const EdgeInsets.only(right: 190, left: 120, top: 24)
                            : MediaQuery.of(context).size.width > 500
                                ? const EdgeInsets.only(
                                    right: 700, left: 700, top: 24)
                                : const EdgeInsets.only(right: 30, left: 30, top: 24),
                        child: TextField(
                          style: const TextStyle(fontFamily: 'main'),
                          keyboardType: TextInputType.number,
                          textDirection: TextDirection
                              .rtl, // تحديد اتجاه النص من اليمين لليسار
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: maincolor)),
                            labelText: 'قيمة السند',
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
                      Container(
                        margin: MediaQuery.of(context).size.width > 450
                            ? const EdgeInsets.only(right: 190, left: 120, top: 24)
                            : MediaQuery.of(context).size.width > 500
                                ? const EdgeInsets.only(
                                    right: 700, left: 700, top: 24)
                                : const EdgeInsets.only(right: 30, left: 30, top: 24),
                        child: TextField(
                          style: const TextStyle(fontFamily: 'main'),
                          textDirection: TextDirection
                              .rtl, // تحديد اتجاه النص من اليمين لليسار
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            // alignLabelWithHint: Alignment.topRight,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: maincolor)),
                            labelText: 'ملاحظــات',
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
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        },
                        child: Container(
                          // width: MediaQuery.of(context).size.width * 0.20,
                          margin: MediaQuery.of(context).size.width > 450
                              ? const EdgeInsets.only(right: 280, left: 280, top: 24)
                              : MediaQuery.of(context).size.width > 500
                                  ? const EdgeInsets.only(
                                      right: 700, left: 700, top: 24)
                                  : const EdgeInsets.only(
                                      right: 50, left: 50, top: 24),
                          height: 55,
                          decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'إضــافة سنـد ',
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
            ])));
  }
}
