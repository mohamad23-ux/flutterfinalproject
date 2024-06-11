import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/consts.dart';
import 'package:mym/views/sales_View.dart';
import 'package:mym/views/warehouse_View.dart';

class KindsView extends StatefulWidget {
  const KindsView({super.key});

  @override
  State<KindsView> createState() => _KindsViewState();
}

class _KindsViewState extends State<KindsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            allKindsBar(context),
            KindsSearchAndDelete(context),
            Kindsbody(context),
          ],
        ),
      ),
    );
  }
}

Widget allKindsBar(BuildContext context) {
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
                          "الأصنــاف",
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
                Center(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 2),
                        // margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                print(
                                    "this button for add new CustomCard this page ");
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          content: Container(
                                              child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Text(
                                              "اضافة صنف",
                                              style: TextStyle(
                                                  color: maincolor,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(12),
                                            child: TextField(
                                              controller: Money,
                                              keyboardType:
                                                  TextInputType.number,

                                              style:
                                                  TextStyle(fontFamily: 'main'),
                                              textDirection: TextDirection
                                                  .rtl, // تحديد اتجاه النص من اليمين لليسار
                                              textAlign: TextAlign.right,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(21),
                                                        borderSide: BorderSide(
                                                            color: maincolor)),
                                                labelText: 'اسم الصنف ',
                                                labelStyle: const TextStyle(
                                                    fontFamily: 'main'),
                                                border:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(25),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  25),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  25),
                                                          topRight:
                                                              Radius.circular(
                                                                  25)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(12),
                                            child: TextField(
                                              controller: Money,
                                              keyboardType:
                                                  TextInputType.number,

                                              style:
                                                  TextStyle(fontFamily: 'main'),
                                              textDirection: TextDirection
                                                  .rtl, // تحديد اتجاه النص من اليمين لليسار
                                              textAlign: TextAlign.right,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(21),
                                                        borderSide: BorderSide(
                                                            color: maincolor)),
                                                labelText: 'ملاحظات',
                                                labelStyle: TextStyle(
                                                    fontFamily: 'main'),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(25),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  25),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  25),
                                                          topRight:
                                                              Radius.circular(
                                                                  25)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 275,
                                              height: 55,
                                              margin: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                color: maincolor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: InkWell(
                                                  child: Text(
                                                    'اضافة صنف ',
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
                                      )));
                                    });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 12, left: 12),
                                child: Icon(Icons.add_circle_outlined,
                                    size: 30, color: Colors.white),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("this button for restart this page ");
                              },
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 3),
                                  width: 30,
                                  height: 30,
                                  child: Icon(
                                    Icons.restart_alt_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print(
                                    "this button for delte all CustomCards this page ");
                              },
                              child: InkWell(
                                onTap: () {
                                  //
                                },
                                child: Center(
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(bottom: 3, left: 12),
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
                            ),
                          ],
                        ))),
              ],
            ),
          )));
}

Widget KindsSearchAndDelete(BuildContext context) {
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
                  labelText: 'البحث عن صنف  ',
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

Widget Kindsbody(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.60,
    alignment: Alignment.center,
    margin: EdgeInsets.all(25),
    width: double.infinity,
    // height: MediaQuery.of(context).size.height * 0.58,
    color: const Color.fromARGB(255, 255, 255, 255),
    child: Center(
      child: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 6 : 3,
        children: [
          InkWell(
            child: KindCard("مكسرات"),
            onTap: () {
              print("hello");
            },
            onDoubleTap: () {
              print("hello double dick ");
            },
          ),
          KindCard("معلبات"),
          KindCard("شيبس"),
          KindCard("منظفات")
        ],
      ),
    ),
  );
}
