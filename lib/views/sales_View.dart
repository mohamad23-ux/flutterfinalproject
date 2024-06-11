import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/login_View.dart';
import 'package:mym/views/signin_View.dart';
import 'package:mym/views/warehouse_View.dart';

final discountController = TextEditingController(); // هنا يتم إنشاء المراقب

DateTime now = DateTime.now();
int Fatora = 0;
double discount = 0;
int price = 0;

Widget SalesCard(String text, int count, int pricey) {
  int finalprice = count * pricey;

  Fatora += finalprice;
  return Container(
    width: 150,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: maincolor,
      borderRadius: BorderRadius.circular(10), // Set the desired radius value
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  count.toString(),
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'الكميه',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
              ],
            )),
        Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  finalprice.toString(),
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'السعر',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
              ],
            ))
      ],
    ),
  );
}

class salesView extends StatefulWidget {
  const salesView({super.key});

  @override
  State<salesView> createState() => _salesViewState();
}

class _salesViewState extends State<salesView> {
  int? payWay;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      salesAppBar(context),
      Expanded(
        flex: 3,
        child: Container(
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
                  child: specialCard('اضافة', 2, 11, context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => warehouseView()),
                    );
                  },
                ),
                SalesCard('Sinalco', 15, 9000),
                SalesCard('اندومي ', 1, 3500),
                SalesCard('مرتديلا', 2, 14000),
                SalesCard('pepsi', 2, 12500),
                SalesCard('طرابيش', 1, 5000),
                SalesCard('Neom', 2, 12500),
                SalesCard('Barakat', 2, 12000),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 247, 247, 247),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                    context: context, // استخدم الـ context المتاح هنا
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Center(child: Text('توصيل طلبية')),
                          content: Container(
                            height: MediaQuery.of(context).size.width * 0.85,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(20),
                                    child: TextField(
                                      style: TextStyle(fontFamily: 'main'),
                                      textDirection: TextDirection
                                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                                      textAlign: TextAlign.right,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide:
                                                BorderSide(color: maincolor)),
                                        labelText: 'اسم الشاب',
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
                                    margin: EdgeInsets.all(20),
                                    child: TextField(
                                      style: TextStyle(fontFamily: 'main'),
                                      textDirection: TextDirection
                                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.right,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide:
                                                BorderSide(color: maincolor)),
                                        labelText: 'تكلفة الطلب ',
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
                                    margin: EdgeInsets.all(20),
                                    child: TextField(
                                      style: TextStyle(fontFamily: 'main'),
                                      textDirection: TextDirection
                                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                                      textAlign: TextAlign.right,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide:
                                                BorderSide(color: maincolor)),
                                        labelText: 'العنـــوان',
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
                                    padding: EdgeInsets.all(14),
                                    margin: EdgeInsets.only(top: 14),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                      color: maincolor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'تــم ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'main',
                                            fontSize: 19),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                  );
                },
                child: Container(
                  child: Text(
                    'هل ترغب بتوصيل الطلبية ؟ ',
                    style: TextStyle(color: maincolor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(14),
                  width: 275,
                  height: 55,
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'إدراج فاتورة  ',
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

Widget specialCard(String text, int count, int price, BuildContext context) {
  int finalprice = count * price;
  return Container(
    width: 150,
    height: 150,
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white,
        border: Border.all(width: 1.2, color: maincolor)),
    child: Column(
      children: [
        Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(6),
                    child: Text(
                      'اضافة منتج',
                      style: TextStyle(
                          color: maincolor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.all(3),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => warehouseView()),
                          );
                        },
                        icon: Icon(
                          Icons.add,
                          color: maincolor,
                        )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                        border: Border.all(width: 1.2, color: maincolor)),
                  ),
                )
              ],
            )),
      ],
    ),
  );
}

///////
/////
///
///
///بدي اعمل هون بالكلاس الجاي كونترولر اختياري بالبرمترز كيف ؟
///
///
Widget myTextFiled(
  String text,
  TextInputType type,
) {
  return Container(
    margin: EdgeInsets.all(20),
    child: TextField(
      keyboardType: type,

      style: TextStyle(fontFamily: 'main'),
      textDirection: TextDirection.rtl, // تحديد اتجاه النص من اليمين لليسار
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: maincolor)),
        labelText: text,
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
  );
}

Widget salesAppBar(BuildContext context) {
  return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          color: maincolor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10, bottom: 18, left: 40),
                    child: Text(
                      'فاتورة المبيع  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'main'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 18, right: 20),
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
              Row(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Center(
                            child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ));
                          },
                          child: Container(
                              alignment: Alignment.centerLeft,
                              width: 40,
                              height: 30,
                              child: Icon(
                                Icons.pending_actions_rounded,
                                color: Colors.white,
                              )),
                        )),
                        SizedBox(
                          width: 25,
                        ),
                        Center(
                            child: Container(
                                alignment: Alignment.centerRight,
                                width: 80,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      now.year.toString() +
                                          "/" +
                                          now.month.toString() +
                                          "/" +
                                          now.day.toString(),
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontFamily: 'main'),
                                    ),
                                  ],
                                ))),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )));
}
