//سند الدفع

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/login_View.dart';
import 'package:mym/views/main_View.dart';

///
//////

Widget myAppBar(String text, BuildContext context) {
  return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          color: maincolor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, bottom: 10, left: 30),
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'main'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 14, right: 20),
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                  child: Container(
                      // margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerRight,
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            now.year.toString() +
                                "/" +
                                now.month.toString() +
                                "/" +
                                now.day.toString(),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'main',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ))),
            ],
          )));
}

var paymentVoucherMoney = TextEditingController();
var paymentVoucherKind = TextEditingController();
var paymentVoucherDetails = TextEditingController();

class payVoucher extends StatefulWidget {
  const payVoucher({super.key});

  @override
  State<payVoucher> createState() => _payVoucherState();
}

class _payVoucherState extends State<payVoucher> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset:
                false, // تعطيل تغيير حجم الشاشة عند فتح لوحة المفاتيح

            body: Column(children: [
              myAppBar('سند الدفع ', context),
              SingleChildScrollView(
                child: Container(
                  height: 600,
                  child: ListView(
                    children: [
                      Container(
                        margin: MediaQuery.of(context).size.width > 450
                            ? EdgeInsets.only(right: 190, left: 120, top: 24)
                            : MediaQuery.of(context).size.width > 500
                                ? EdgeInsets.only(
                                    right: 700, left: 700, top: 24)
                                : EdgeInsets.only(right: 30, left: 30, top: 24),
                        child: TextField(
                          controller: paymentVoucherMoney,
                          style: TextStyle(fontFamily: 'main'),
                          textDirection: TextDirection
                              .rtl, // تحديد اتجاه النص من اليمين لليسار
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: maincolor)),
                            labelText: 'قيمة السند',
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
                        margin: MediaQuery.of(context).size.width > 450
                            ? EdgeInsets.only(right: 190, left: 120, top: 24)
                            : MediaQuery.of(context).size.width > 500
                                ? EdgeInsets.only(
                                    right: 700, left: 700, top: 24)
                                : EdgeInsets.only(right: 30, left: 30, top: 24),
                        child: TextField(
                          controller: paymentVoucherDetails,
                          style: TextStyle(fontFamily: 'main'),
                          textDirection: TextDirection
                              .rtl, // تحديد اتجاه النص من اليمين لليسار
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            // alignLabelWithHint: Alignment.topRight,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: maincolor)),
                            labelText: 'ملاحظــات',
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
                      InkWell(
                        onTap: () {
                          // return addSanad();
                        },
                        child: Container(
                          // width: MediaQuery.of(context).size.width * 0.20,
                          margin: MediaQuery.of(context).size.width > 450
                              ? EdgeInsets.only(right: 280, left: 280, top: 24)
                              : MediaQuery.of(context).size.width > 500
                                  ? EdgeInsets.only(
                                      right: 700, left: 700, top: 24)
                                  : EdgeInsets.only(
                                      right: 50, left: 50, top: 24),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
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

Widget processingAppBar(String text, BuildContext context) {
  return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          padding: EdgeInsets.all(3),
          width: double.infinity,
          color: maincolor,
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10, bottom: 18, left: 40),
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'main'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, bottom: 5, right: 20),
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 3),
                        // margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Container(
                            //   margin: EdgeInsets.only(right: 12),
                            //   child: Icon(Icons.delete,
                            //       size: 30, color: Colors.white),
                            // ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                width: 30,
                                height: 30,
                                child: Icon(
                                  Icons.restore_page,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ))),
              ],
            ),
          )));
}
