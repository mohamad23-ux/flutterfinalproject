import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/Taqarerss_View.dart';
import 'package:mym/views/buy_View.dart';
import 'package:mym/views/consts.dart';
import 'package:mym/views/home_View.dart';
import 'package:mym/views/paymentvoucher_View.dart';
import 'package:mym/views/processing_View.dart';
import 'package:mym/views/recvoucher_View.dart';
import 'package:mym/views/sales_View.dart';
import 'package:mym/views/warehouse_View.dart';
import 'package:intl/intl.dart';

// List<String> mainNames = [
//   'فواتير المبيعات',
//   'فواتير الشراء',
//   'سند الدفع',
//   'سند القبض',
// ];
//  Widget myText(String Text, int size, String fontfamily) {

// }
Widget DrawerItem(String Title, Icon itemIcon, BuildContext context) {
  return Container(
    color: cardColor,
    padding: EdgeInsets.all(12),
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: EdgeInsets.all(2),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(Title, style: TextStyle(color: TextColor)),
        SizedBox(
          width: 30,
        ),
        itemIcon,
      ],
    ),
  );
}

Widget newCard(String text) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    // padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: cardColor,
      border: Border.all(color: Colors.black, width: .5),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5), // لون الظل الأسود
          spreadRadius: 2, // نصف قطر الانتشار
          blurRadius: 5, // نصف قطر التموج
          offset: Offset(0,
              3), // تغيير موقع الظل (الأول لليمين/اليسار، الثاني للأعلى/الأسفل)
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'main', fontSize: 20, color: TextColor),
      ),
    ),
  );
}

DateTime now = DateTime.now();
var dayName = DateFormat('EEEE', 'ar').format(now);

List Foundation = [
  newCard('فواتير المبيع'),
  newCard('فواتير الشراء'),
  newCard('سند الدفع'),
  newCard('سند القبض'),
];

////////////////////Here : رح اعمل دالة لحتى تعمل العناصر الموجودين بالDrawer
// void DrawerItem(){
//   return
// }

class mainview extends StatelessWidget {
  mainview({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: cardColor,
        child: Container(
          color: cardColor,
          child: Column(
            // padding: EdgeInsets.zero,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                      height: 200,
                      padding: EdgeInsets.all(6),
                      width: double.infinity,
                      color: maincolor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                        backgroundColor: cardColor,
                                        title: Center(
                                            child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                              padding: EdgeInsets.all(12),
                                              color: maincolor,
                                              child: Text(
                                                'حـكمة اليّــوم',
                                                style: TextStyle(
                                                    fontFamily: 'cool',
                                                    fontSize: 30,
                                                    color: Colors.white),
                                              )),
                                        )),
                                        content: SingleChildScrollView(
                                            child: Column(children: [
                                          Container(
                                            child: Text(
                                              ':يقوّل العلماء  ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: TextColor),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '"لا تنسى أن معاملتك الطيّبة للزبائن وتلبيتهم سيزيد من مبيعاتك وتسويقك" ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: TextColor),
                                            ),
                                          )
                                        ])));
                                  });
                            },
                            icon: Icon(Icons.lightbulb),
                            color: Colors.white,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 105,
                                    height: 105,
                                    margin: EdgeInsets.all(15),
                                    child: Center(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          defultprofile,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.31,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.31,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'عمك الجندلي ',
                                    style: TextStyle(color: TextColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.dark_mode_rounded),
                            color: Colors.white,
                          ),
                        ],
                      ))),
              SizedBox(
                height: 12,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mainview()));
                  },
                  child: DrawerItem(
                      'الصفحة الرئيّسيّة', Icon(Icons.home), context)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => processingView()));
                  },
                  child: DrawerItem('معالجة واستـلام',
                      Icon(Icons.settings_suggest_outlined), context)),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mainview()));
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaqarersView()));
                    },
                    child: DrawerItem('التــقاريـر',
                        Icon(Icons.insert_page_break_sharp), context),
                  )),
              InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: DrawerItem(
                      'تسجيّل خروج ', Icon(Icons.logout_outlined), context)),
            ],
          ),
        ),
      ),
      backgroundColor: cardColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              child: Container(
                width: double.infinity,
                height: 120,
                color: maincolor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // العنصر الأول (في اليسار)

                        // العنصر الثاني (في اليمين)
                        Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.only(top: 12),
                          child: Center(
                            child: Text(
                              ///////////////////////
                              ///////
                              ///// هون بدنانعالجلجو وضعو بالفرع صورة بدال نص
                              'M.Y.M',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'main',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _scaffoldKey.currentState!.openEndDrawer();
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            margin: EdgeInsets.only(top: 12),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  defultprofile,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            child: Text(
                              price.toString(),
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'main'),
                            ),
                          )),
                          Center(
                              child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            child: Text(
                              ' صافي الربح ',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'main'),
                            ),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 30,
                        color: Color.fromARGB(255, 167, 166, 166),
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
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'main'),
                            ),
                            Text(
                              dayName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'main'),
                            ),
                          ],
                        )),
                  ),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.60,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: GridView.count(
                        crossAxisCount:
                            MediaQuery.of(context).size.width > 600 ? 2 : 1,
                        shrinkWrap: false,
                        childAspectRatio: 3,
                        children: [
                          InkWell(
                            child: Foundation[0],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => salesView()));
                            },
                          ),
                          InkWell(
                            child: Foundation[1],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => buyView()));
                            },
                          ),
                          InkWell(
                            child: Foundation[2],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => payVoucher()));
                            },
                          ),
                          InkWell(
                            child: Foundation[3],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => recVoucher()));
                            },
                          ),
                        ],
                      )),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => warehouseView()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.only(top: 12),
                  color: maincolor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'المستودع',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'main',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
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
