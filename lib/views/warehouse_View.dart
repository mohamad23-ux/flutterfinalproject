import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';

List KindsList = ["عصائر", "معلبات", "موالح", "بقوليات", "شيبس"];

int kinds = 0;
//هون بدنا نعالج القصة انو يستقبل الصورة من المستخدم ويعملها استدعاء للدالة ممن عندو
List<Widget> kindsInWareHouse = [
  warehouseCard(KindsList[0]),
  warehouseCard(KindsList[1]),
  warehouseCard(KindsList[2]),
  warehouseCard(KindsList[3]),
  warehouseCard(KindsList[4]),
];
Widget warehouseCard(String text) {
  return Center(
    child: Stack(
      children: [
        Center(),
        Container(
          width: double.infinity,
          height: 109,
          margin: EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: cardColor,
            border: Border.all(color: Colors.black, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'main',
                fontSize: 33,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class warehouseView extends StatelessWidget {
  const warehouseView({super.key});

  @override
  Widget build(BuildContext context) {
    kinds++;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 18, left: 40),
                                child: Text(
                                  'المستودع',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: 'main'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 8, bottom: 18, right: 20),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                    ),
                                    Center(
                                        child: Container(
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      height: 30,
                                      child: Text(
                                        ' عدد الأصناف : ${kindsInWareHouse.length.toString()} ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'main'),
                                      ),
                                    )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ))),
              ListView(
                shrinkWrap: true,
                // scrollDirection: ,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: kindsInWareHouse.length,
                      itemBuilder: (context, index) {
                        return kindsInWareHouse[index];
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
