import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/mainWidgets/Taqarerss_View.dart';
import 'package:mym/views/mainWidgets/buy_View.dart';
import 'package:mym/views/mainWidgets/paymentvoucher_View.dart';
import 'package:mym/views/mainWidgets/processing_View.dart';
import 'package:mym/views/mainWidgets/recvoucher_View.dart';
import 'package:mym/views/mainWidgets/sales_View.dart';
import 'package:mym/views/mainWidgets/warehouse_View.dart';
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
    padding: const EdgeInsets.all(12),
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.all(2),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(Title, style: TextStyle(color: TextColor)),
        const SizedBox(
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
    margin: const EdgeInsets.all(10),
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
          offset: const Offset(0,
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
// var dayName = DateFormat('EEEE', 'ar').format(now);

List Foundation = [
  newCard('فاتورة مبيع'),
  newCard('فاتورة شراء'),
  newCard('سند الدفع'),
  newCard('سند القبض'),
];

////////////////////Here : رح اعمل دالة لحتى تعمل العناصر الموجودين بالDrawer
// void DrawerItem(){
//   return
// }

class Mainview extends StatelessWidget {
  Mainview({super.key});
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
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(6),
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
                                              padding: const EdgeInsets.all(12),
                                              color: maincolor,
                                              child: const Text(
                                                'حـكمة اليّــوم',
                                                style: TextStyle(
                                                    fontFamily: 'cool',
                                                    fontSize: 30,
                                                    color: Colors.white),
                                              )),
                                        )),
                                        content: SingleChildScrollView(
                                            child: Column(children: [
                                          Text(
                                            ':يقوّل العلماء  ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: TextColor),
                                          ),
                                          Text(
                                            '"لا تنسى أن معاملتك الطيّبة للزبائن وتلبيتهم سيزيد من مبيعاتك وتسويقك" ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: TextColor),
                                          )
                                        ])));
                                  });
                            },
                            icon: const Icon(Icons.lightbulb),
                            color: Colors.white,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 105,
                                    height: 105,
                                    margin: const EdgeInsets.all(15),
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
                                Text(
                                  'عمك الجندلي ',
                                  style: TextStyle(color: TextColor),
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.dark_mode_rounded),
                            color: Colors.white,
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mainview()));
                  },
                  child: DrawerItem(
                      'الصفحة الرئيّسيّة', const Icon(Icons.home), context)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const processingView()));
                  },
                  child: DrawerItem('معالجة واستـلام',
                      const Icon(Icons.settings_suggest_outlined), context)),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mainview()));
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TaqarersView()));
                    },
                    child: DrawerItem('التــقاريـر',
                        const Icon(Icons.insert_page_break_sharp), context),
                  )),
              InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: DrawerItem(
                      'تسجيّل خروج ', const Icon(Icons.logout_outlined), context)),
            ],
          ),
        ),
      ),
      backgroundColor: cardColor,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
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
                              margin: const EdgeInsets.only(top: 12),
                              child: const Center(
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
                                margin: const EdgeInsets.only(top: 12),
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
                        const SizedBox(
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
                                  style: const TextStyle(
                                      color: Colors.white, fontFamily: 'main'),
                                ),
                              )),
                              Center(
                                  child: Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 30,
                                child: const Text(
                                  ' صافي الربح ',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'main'),
                                ),
                              )),
                            ],
                          ),
                        ),
                        const SizedBox(
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
                            margin: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 30,
                            color: const Color.fromARGB(255, 167, 166, 166),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "${now.year}/${now.month}/${now.day}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'main'),
                                ),
                                Text(
                                  now.day.toString(),
                                  style: const TextStyle(
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
                          margin: const EdgeInsets.all(10),
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
                                          builder: (context) => const SalesView()));
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
                                          builder: (context) => const payVoucher()));
                                },
                              ),
                              InkWell(
                                child: Foundation[3],
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const recVoucher()));
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
                      MaterialPageRoute(builder: (context) => const WarehouseView()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08999,
                      decoration: BoxDecoration(
                        color: maincolor,
                      ),
                      width: double.infinity,
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 19,
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WarehouseView()),
                    );
                  },
                  child: Container(
                    color: maincolor,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
