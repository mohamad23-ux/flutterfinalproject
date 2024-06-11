import 'package:flutter/material.dart';
import 'package:mym/views/consts.dart';

import '../../maincolor.dart';

class deliveryInformation extends StatefulWidget {
  const deliveryInformation({super.key});

  @override
  State<deliveryInformation> createState() => _deliveryInformationState();
}

class _deliveryInformationState extends State<deliveryInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            DeliveryBar(context),
            DeliverySearchAndDelete(context),
          ],
        ),
      ),
    );
    ;
  }

  /////////////////////////////////////////////////////
  ////////////////////////Here is Delivery Bar///////////////////
  Widget DeliveryBar(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
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
                          margin: EdgeInsets.only(top: 10, bottom: 2, left: 40),
                          child: Text(
                            "معلومات الديلفري  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'main'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 9, right: 20),
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
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                      child: Container(
                          margin: EdgeInsets.only(bottom: 2),
                          // margin: EdgeInsets.only(left: 10),
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print(
                                          "this button for restart this page ");
                                    },
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 3),
                                        width: 20,
                                        height: 30,
                                        child: Icon(
                                          Icons.restart_alt_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print(
                                          "this button for delte all CustomCards this page ");
                                    },
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 3, left: 12),
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.dangerous_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      deliveryName,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))),
                ],
              ),
            )));
  }

  /////////////////////////////////
  ////
  ////
  //////////////////Here is the Delivery Search Field ////////////////
  Widget DeliverySearchAndDelete(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(3),
        child: Row(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) => {},
                  style: TextStyle(fontFamily: 'main'),
                  textDirection:
                      TextDirection.rtl, // تحديد اتجاه النص من اليمين لليسار
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: maincolor)),
                    labelText: 'البحث عن ديلفري  ',
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
            ),
          ],
        ),
      ),
    );
  }
}
