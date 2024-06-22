import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/consts.dart';

class deliveryView extends StatefulWidget {
  const deliveryView({super.key});

  @override
  State<deliveryView> createState() => _deliveryViewState();
}

class _deliveryViewState extends State<deliveryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(flex: 2, child: allDeliveriesBar(context)),
            Expanded(flex: 1, child: SearchAndDelete(context)),
            Expanded(flex: 6, child: DeliveriesCardsListView(context)),
          ],
        ),
      ),
    );
  }

  Widget DeliveriesCardsListView(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height < 400
            ? MediaQuery.of(context).size.height * 0.20
            : MediaQuery.of(context).size.height * 0.55,
        child: ListView.builder(
            // Customers!.length
            itemCount: 1,
            itemBuilder: (context, index) {
              return InkWell(
                onDoubleTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            content: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.55,
                                child: Container(
                                  child: Center(
                                      child: Text("تعديل معلومات الديلفري ")),
                                )));
                      });
                },
                child: Column(
                  children: [
                    DeliveryCard("اصاله نصري  ", "0991501274", "الجسر الأبيض ",
                        "مسكليت", context),
                    DeliveryCard("الهضبة عمرو دياب  ", "0995864567",
                        "الاسكندرية ", "ميتور", context),
                  ],
                ),
              );
            }));
  }
}

Widget allDeliveriesBar(BuildContext context) {
  return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.25,
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
                          "شباب التوصيل",
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
                        margin: EdgeInsets.only(bottom: 0),
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
                                              "اصافة شاب توصيل  جديد",
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
                                                labelText: 'اسم شاب التوصيل  ',
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
                                            margin: const EdgeInsets.all(12),
                                            child: TextField(
                                              controller: Money,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[0-9]')),
                                              ],
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
                                                labelText: 'الهاتف',
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
                                          Container(
                                            margin: EdgeInsets.all(12),
                                            child: TextField(
                                              controller: Money,
                                              keyboardType:
                                                  TextInputType.number,

                                              style: const TextStyle(
                                                  fontFamily: 'main'),
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
                                                labelText: 'العنوان',
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
                                                    'اضــافة',
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
                                    "this button for delte all deliveryCard this page ");
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

Widget SearchAndDelete(BuildContext context) {
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
