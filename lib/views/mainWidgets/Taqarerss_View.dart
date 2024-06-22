import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/mainWidgets/main_View.dart';

class TaqarersView extends StatefulWidget {
  const TaqarersView({super.key});

  @override
  State<TaqarersView> createState() => _FatorasViewState();
}

class _FatorasViewState extends State<TaqarersView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: cardColor,
      body: Column(
        children: [Fatoras()],
      ),
    ));
  }

  Widget Fatoras() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(130), bottomRight: Radius.circular(130)),
      child: Container(
        color: maincolor,
        padding: EdgeInsets.all(33),
        height: MediaQuery.of(context).size.height * 0.85,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                color: maincolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: maincolor,
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
              ),
              Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "تقـريـــر",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    color: maincolor,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(left: 12, right: 12, top: 30),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.90,
                          color: Color.fromARGB(255, 190, 190, 190),
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
                                now.day.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'main'),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    height: MediaQuery.of(context).size.height * 0.50,
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "صافي الصندوق",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "رصيد الصندوق",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "المنتج الاكثر مبيعاً",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
