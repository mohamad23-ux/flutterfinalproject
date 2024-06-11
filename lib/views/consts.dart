import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/main_View.dart';
import 'package:mym/views/processingItems/CustomerInformation.dart';
import 'package:mym/views/processingItems/deliveryInformation.dart';
import 'package:mym/views/processingItems/providerInforamtion.dart';
//
//1-TextEditingController Money
//2-TextEditingController Dialog
//3-نوع  ال سند SanadKind
//4-الكاردز الخاصة بالموردين والزبائن والاصناف
//5-الخطوط
//6-ليستة الاصناف
//7-
//8-

class conststhings extends StatefulWidget {
  const conststhings({super.key});

  @override
  State<conststhings> createState() => _conststhingsState();
}

class _conststhingsState extends State<conststhings> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//////
///ليستة الاصناف
///

///////////////المتغير هنا لل DropDownButton
String SanadKind = "سند قبض ";
//////متغيرات حقول ادخال تعديل الاليرت ديالوغ
TextEditingController Money = TextEditingController();
TextEditingController Details = TextEditingController();

///
bool isDoubleTap = false;
List<Map<String, dynamic>> foundSanad = [];
List<Map<String, dynamic>> providers = [];
Widget inforamtionCard(String voucherKind, int money, String subject) {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        color: maincolor, borderRadius: BorderRadius.circular(12)),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 2, color: Colors.white))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${now.year}/${now.month}/${now.day}",
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'main'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    dayName,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'main'),
                  ),
                ],
              ),
              Container(
                child: Text(
                  voucherKind,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'main'),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(3),
        ),
        Text(
          money.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            subject,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    ),
  );
}

/////////////////////////////////////
///
///
/////////////////////////////////////////
String providerName = "اســم المورد";
var providerCompany = "حر";
Widget providerCard(String providerName, String providerPhone, String Company,
    String providerDetails, BuildContext context) {
  providerName = providerName;
  return Dismissible(
    key: UniqueKey(),
    onDismissed: (direction) {
      // setState(() {
      //   if (index >= 0 && index < foundSanad.length) {
      //     foundSanad.removeAt(index);
      //   }
      // });

      // ScaffoldMessenger.of(context);
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
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "حـذف",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
      padding: EdgeInsets.only(right: 20),
      alignment: Alignment.centerLeft,
    ),
    secondaryBackground: Container(
      margin: EdgeInsets.all(12),
      color: Colors.red,
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
                margin: EdgeInsets.all(4),
                child: Text(
                  "حـذف",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
      padding: EdgeInsets.only(right: 20),
      alignment: Alignment.centerRight,
    ),
    child: Container(
      height: 120,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 6, right: 6, bottom: 22),
      decoration: BoxDecoration(
          color: maincolor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          InkWell(
            //////////////
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProviderInformation()));
            },
            ///////////////
            ///
            ///
            ///
            ///
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.only(right: 12),
                    child: const Center(
                      child: Text(
                        "معلومات",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 2, color: Colors.white))),
          ),
          Center(
            child: SizedBox(
              width: 320,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          providerName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          providerPhone,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        )
                      ]),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: Text(
                              Company,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            providerDetails,
                            style: TextStyle(color: maincolor, fontSize: 20),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget CustomerCard(String CustomerName, String CustomerPhone,
    String CustomerAddress, String CustomerDetails, BuildContext context) {
  providerName = providerName;

  return Dismissible(
    key: UniqueKey(),
    onDismissed: (direction) {
      // setState(() {
      //   if (index >= 0 && index < foundSanad.length) {
      //     foundSanad.removeAt(index);
      //   }
      // });

      // ScaffoldMessenger.of(context);
    },
    background: Container(
      margin: EdgeInsets.only(right: 12, left: 12),
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
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "حـذف",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
      padding: EdgeInsets.only(right: 20),
      alignment: Alignment.centerLeft,
    ),
    secondaryBackground: Container(
      margin: EdgeInsets.all(12),
      color: Colors.red,
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
                margin: EdgeInsets.all(4),
                child: Text(
                  "حـذف",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
      padding: EdgeInsets.only(right: 20),
      alignment: Alignment.centerRight,
    ),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      margin: EdgeInsets.only(top: 12),
      height: 120,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: maincolor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          InkWell(
            //////////////
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomerInformation()));
            },
            ///////////////
            ///
            ///
            ///
            ///
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.only(right: 12),
                    child: const Center(
                      child: Text(
                        "معلومات",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 2, color: Colors.white))),
          ),
          Center(
            child: SizedBox(
              width: 210,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          CustomerName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          CustomerPhone,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        )
                      ]),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: Text(
                              CustomerAddress,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            CustomerDetails!,
                            style: TextStyle(color: maincolor, fontSize: 20),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

//////////////////////////////////
///
///
///
///
///
////هون الكاردت تبع شباب التوصيل (تحت)
////
////
////
////
////
//////
///////
////////
String deliveryName = "هنا اسم الديلفري";
Widget DeliveryCard(String DeliveryName, String DeliveryPhone,
    String DeliveryAddress, String DeliveryDetails, BuildContext context) {
  DeliveryName = DeliveryName;
  return Dismissible(
    key: UniqueKey(),
    onDismissed: (direction) {
      // setState(() {
      //   if (index >= 0 && index < foundSanad.length) {
      //     foundSanad.removeAt(index);
      //   }
      // });

      // ScaffoldMessenger.of(context);
    },
    background: Center(
      child: Container(
        height: 10,
        color: Colors.red,
        child: Center(
          child: Column(
            children: [
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
                    margin: EdgeInsets.all(4),
                    child: Text(
                      "حـذف",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        padding: EdgeInsets.only(right: 20),
        alignment: Alignment.centerLeft,
      ),
    ),
    secondaryBackground: Center(
      child: Container(
        height: 10,
        color: Colors.red,
        child: Center(
          child: Column(
            children: [
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
                    margin: EdgeInsets.all(4),
                    child: Text(
                      "حـذف",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        padding: EdgeInsets.only(right: 20),
        alignment: Alignment.centerLeft,
      ),
    ),
    child: Container(
      height: 120,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 6, right: 6, bottom: 22),
      decoration: BoxDecoration(
          color: maincolor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          InkWell(
            //////////////
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const deliveryInformation()));
            },
            ///////////////
            ///
            ///
            ///
            ///
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.only(right: 12),
                    child: const Center(
                      child: Text(
                        "معلومات",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 2, color: Colors.white))),
          ),
          Center(
            child: SizedBox(
              width: 320,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          DeliveryName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              DeliveryPhone,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            )
                          ]),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: Text(
                              DeliveryAddress,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            DeliveryDetails!,
                            style: TextStyle(color: maincolor, fontSize: 20),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget KindCard(String title) {
  return Container(
    height: 60,
    width: 60,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: maincolor,
      borderRadius: BorderRadius.circular(10), // Set the desired radius value
    ),
    child: Container(
      margin: EdgeInsets.all(4),
      alignment: Alignment.center,
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: TextStyle(color: Colors.white, fontSize: 21),
      ),
    ),
  );
}
