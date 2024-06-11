import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/main_View.dart';
import 'package:mym/views/sales_View.dart';
import 'package:mym/views/warehouse_View.dart';

class buyView extends StatelessWidget {
  buyView({super.key});
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [buyAppBar(context), BuyGrid(context)])));
  }

  Widget buyAppBar(BuildContext context) {
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
                        'فاتورة الشراء  ',
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
                Center(
                  child: Row(
                    children: [
                      Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                            Center(
                                child: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => ));
                              },
                              child: Center(
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 40,
                                    height: 30,
                                    child: Icon(
                                      Icons.pending_actions_rounded,
                                      color: Colors.white,
                                    )),
                              ),
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
                ),
              ],
            )));
  }

  int Fatora = 0;

  Widget BuyCard(String text, int count, int pricey) {
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

  Widget BuyGrid(BuildContext context) {
    return Expanded(
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
              BuysCard('Sinalco', 15, 9000),
              BuysCard('اندومي ', 1, 3500),
              BuysCard('مرتديلا', 2, 14000),
              BuysCard('pepsi', 2, 12500),
              BuysCard('طرابيش', 1, 5000),
              BuysCard('Neom', 2, 12500),
              BuysCard('Barakat', 2, 12000),
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuysCard(String text, int count, int pricey) {
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
