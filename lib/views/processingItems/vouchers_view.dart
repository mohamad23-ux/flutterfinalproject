import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/consts.dart';
import 'package:mym/views/main_View.dart';
import 'package:mym/views/paymentvoucher_View.dart';
import 'package:mym/views/sales_View.dart';

enum Action { delete } //to delete card with swip in Function

class vouchersView extends StatefulWidget {
  const vouchersView({super.key});

  @override
  State<vouchersView> createState() => _vouchersViewState();
}

class _vouchersViewState extends State<vouchersView> {
  /////////////////////////////////
  String? ValuewofSanadKind;
  List SanadKind = ["سند قبض", "سند دفع "];
  ///////////////////////////////////////////////////////////////////////////
  /////دالة لحذف البطاقات عند سحبها
/////////////للكومبو بوكس
  TextEditingController SanadTypeFromComboBox = TextEditingController();

////
  void RemoveFun(int index, Action action) {
    final sanadCardToDelete = foundSanad[index];
    setState(() {
      foundSanad.removeAt(index);
    });
  }

/////دالة لحف كل العناصر في الليست
  void _deleteAllSanads() {
    setState(() {
      if (foundSanad!.length >= 0) {
        foundSanad.clear();
        print('done!');
      } else {
        print('sorry');
      }
    });
  }

/////for combobox
  ///
  int sanadType = 1;
//1=> دفع

  ///
  ///
  List<Map<String, dynamic>> _sanad = [
    //1 = دفع
    //0 = قبض
    {"price": 15000, "type": "سند دفع", "details": "فاتورة كهرباء"},
    {"price": 19900, "type": "سند دفع", "details": "تأجير براد"},
    {"price": 15000, "type": "سند دفع", "details": "سرقة"},
    {"price": 4000, "type": "سند قبض", "details": "سرقة"},
    {"price": 16500, "type": "سند قبض", "details": "فاتورة رصيد"},
  ];

  @override
  void initState() {
    foundSanad = _sanad;
    super.initState();
  }

  @override
  List<Map<String, dynamic>>? results = [];
  void _runfilter(String enterKeyboard) {
    if (enterKeyboard.isEmpty) {
      // إذا كان حقل البحث فارغًا، استخدم القائمة الأصلية
      results = _sanad;
    } else {
      // استخدم القائمة المحولة إلى List ثم قم بتصفيتها
      results = _sanad
          .where((sanad) => sanad["details"].contains(enterKeyboard))
          .toList();
    }
  }

  @override
  void setState(VoidCallback fn) {
    foundSanad != results;
  }

  Widget EditSanad() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(15),
          child: Center(
            child: Text(
              'تعديل السند',
              style: TextStyle(color: maincolor, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        ),

        Container(
          margin: EdgeInsets.all(12),
          child: TextField(
            controller: Money,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            style: TextStyle(fontFamily: 'main'),
            textDirection:
                TextDirection.rtl, // تحديد اتجاه النص من اليمين لليسار
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: maincolor)),
              labelText: 'المبلغ',
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
          margin: EdgeInsets.all(12),
          child: TextField(
            controller: Details,
            style: TextStyle(fontFamily: 'main'),
            textDirection:
                TextDirection.rtl, // تحديد اتجاه النص من اليمين لليسار
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: maincolor)),
              labelText: 'تفاصيل',
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
          alignment: Alignment.centerRight,
          margin: EdgeInsets.all(12),
          child: Text(
            "نوع السند",
            style: TextStyle(color: maincolor, fontSize: 15),
          ),
        ),
        Container(
            child: DropdownMenu(
          controller: SanadTypeFromComboBox,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black, width: 5), // تغيير لون الحدود وسمكها
              borderRadius:
                  BorderRadius.circular(10), // تحديد شكل الحدود المستديرة
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.43,
          menuStyle: MenuStyle(),
          hintText: "نوع السند",
          dropdownMenuEntries: <DropdownMenuEntry<dynamic>>[
            DropdownMenuEntry(
              value: 0,
              label: "سند دفع",
            ),
            DropdownMenuEntry(value: 1, label: "سند قبض")
          ],
        )),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            String CardSubject = Details.text;
            var CardMoney = int.parse(Money.text.toString());
            var CardType = SanadTypeFromComboBox.text;
            inforamtionCard(CardType, CardMoney, CardSubject);
          },
          child: Container(
            width: 275,
            height: 55,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: maincolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: InkWell(
                child: Text(
                  'تـــم',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'main', fontSize: 19),
                ),
              ),
            ),
          ),
        ),

        ///////////////////////////////////
        //////////////////
        ///
        ///
        ///
        ///
        ////////////////
      ],
    );
  }

///////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: processingAppBar('السـنـدات', context),
                flex: 1,
              ),
              Expanded(
                flex: 6,
                child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            child: Row(
                              children: [
                                Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.77,
                                    margin: EdgeInsets.all(10),
                                    child: TextField(
                                      onChanged: (value) => _runfilter(value),
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
                                        labelText: 'البحث عن فاتورة  ',
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
                                Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(
                                      top: 10, right: 2, bottom: 10),
                                  width: 59,
                                  decoration: BoxDecoration(
                                      color: maincolor,
                                      borderRadius: BorderRadius.circular(22)),
                                  child: InkWell(
                                      onTap: () {
                                        _deleteAllSanads();
                                        /////////////////////////////
                                      },
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.delete_outline,
                                            color: Colors.white,
                                          ),
                                          Center(
                                              child: Text(
                                            "حذف \nالكل",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ))
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                              height: MediaQuery.of(context).size.height < 400
                                  ? MediaQuery.of(context).size.height * 0.20
                                  : MediaQuery.of(context).size.height * 0.65,
                              child: foundSanad.isNotEmpty
                                  ? ListView.builder(
                                      itemCount: foundSanad!.length,
                                      itemBuilder: (context, index) {
                                        final item =
                                            foundSanad[index].toString();
                                        return Dismissible(
                                          key: UniqueKey(),
                                          onDismissed: (direction) {
                                            setState(() {
                                              if (index >= 0 &&
                                                  index < foundSanad.length) {
                                                foundSanad.removeAt(index);
                                              }
                                            });

                                            ScaffoldMessenger.of(context);
                                          },
                                          background: Container(
                                            color: Colors.red,
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 40,
                                                  ),
                                                  Center(
                                                    child: Container(
                                                      margin: EdgeInsets.all(4),
                                                      child: Icon(
                                                        Icons.delete,
                                                        color: Colors.white,
                                                        size: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Container(
                                                        margin:
                                                            EdgeInsets.all(4),
                                                        child: Text(
                                                          "حـذف",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                            padding: EdgeInsets.only(right: 20),
                                            alignment: Alignment.centerLeft,
                                          ),
                                          secondaryBackground: Container(
                                            margin: const EdgeInsets.all(12),
                                            color: Colors.red,
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                Center(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.all(4),
                                                    child: const Icon(
                                                      Icons.delete,
                                                      color: Colors.white,
                                                      size: 40,
                                                    ),
                                                  ),
                                                ),
                                                Center(
                                                  child: Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              4),
                                                      child: const Text(
                                                        "حـذف",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                )
                                              ],
                                            ),
                                            padding: EdgeInsets.only(right: 20),
                                            alignment: Alignment.centerRight,
                                          ),
                                          child: InkWell(
                                            onDoubleTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                        content: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.55,
                                                            child:
                                                                EditSanad()));
                                                  });
                                            },
                                            child: inforamtionCard(
                                                foundSanad[index]["type"],
                                                foundSanad[index]["price"],
                                                foundSanad[index]["details"]),
                                          ),
                                        );
                                      })
                                  : const Text(
                                      'لا يوجد سندات ',
                                      style: TextStyle(fontSize: 24),
                                    )),
                        )
                      ],
                    )),
                // Expanded(child: )
              )
            ],
          ),
        ),
      ),
    );
  }
}

//لأنو ما عنا api لهلق فرح نعتمد على ليست مؤقتة
int i = 0;

//                 Widget inforamtionCard(int voucherKind, int money, String subject) {
//   return Container(
//     padding: EdgeInsets.all(12),
//     margin: EdgeInsets.all(12),
//     decoration: BoxDecoration(
//         color: maincolor, borderRadius: BorderRadius.circular(12)),
//     child: Column(
//       children: [
//         Container(
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//               border:
//                   Border(bottom: BorderSide(width: 2, color: Colors.white))),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       now.year.toString() +
//                           "/" +
//                           now.month.toString() +
//                           "/" +
//                           now.day.toString(),
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontFamily: 'main'),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       dayName,
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontFamily: 'main'),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                   child: (voucherKind == 1
//                       ? Text(
//                           "سند دفع",
//                           style: TextStyle(color: Colors.white, fontSize: 20),
//                         )
//                       : voucherKind == 0
//                           ? Text("سند قبض",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20))
//                           : Text("غير محدد",
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 20))))
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(3),
//         ),
//         Text(
//           money.toString(),
//           style: TextStyle(color: Colors.white, fontSize: 30),
//         ),
//         Container(
//           alignment: Alignment.centerRight,
//           child: Text(
//             subject,
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//         )
//       ],
//     ),
//   );
// // }
//  TextField(
//                                                                         style: TextStyle(
//                                                                             fontFamily:
//                                                                                 'main'),
//                                                                         textDirection:
//                                                                             TextDirection.rtl, // تحديد اتجاه النص من اليمين لليسار
//                                                                         textAlign:
//                                                                             TextAlign.right,
//                                                                         decoration:
//                                                                             InputDecoration(
//                                                                           enabledBorder: OutlineInputBorder(
//                                                                               borderRadius: BorderRadius.circular(20),
//                                                                               borderSide: BorderSide(color: maincolor)),
//                                                                           labelText:
//                                                                               'نوع السند',
//                                                                           labelStyle:
//                                                                               TextStyle(
//                                                                             fontFamily:
//                                                                                 'main',
//                                                                           ),
//                                                                           border:
//                                                                               OutlineInputBorder(
//                                                                             borderRadius: BorderRadius.only(
//                                                                                 topLeft: Radius.circular(18),
//                                                                                 bottomRight: Radius.circular(25),
//                                                                                 bottomLeft: Radius.circular(25),
//                                                                                 topRight: Radius.circular(25)),
//                                                                           ),
//                                                                         ),
//                                                                       ),
