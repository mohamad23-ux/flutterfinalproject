import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/login_View.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Widget pagedots() {
    return Builder(builder: (context) {
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        for (int i = 0; i < 3; i++)
          Container(
            width: i == pagenumber ? 25 : 15,
            height: 15,
            margin: i == pagenumber ? EdgeInsets.all(8) : EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: i == pagenumber
                  ? Colors.white
                  : const Color.fromARGB(255, 150, 139, 139),
              borderRadius: BorderRadius.circular(10),
            ),
          )
      ]);
    });
  }

  PageController nextpage = PageController();

  int pagenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: maincolor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(12),
                    width: double.infinity,
                    color: maincolor,
                    child: Text(
                      'تخطي',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'main'),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                    color: maincolor,
                    width: double.infinity,
                    child: PageView(
                      onPageChanged: (value) {
                        setState(
                          () {
                            pagenumber = value;
                          },
                        );
                      },
                      controller: nextpage,
                      children: [
                        Column(
                          children: [
                            Container(
                                width: 400,
                                height: 360,
                                margin: EdgeInsets.only(bottom: 6),
                                child: Image.asset('asset/images/splash1.png')),
                            Text(
                              'تطبيق لإدارة مصاريف\n محلك التجاري   ....',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'main'),
                            ),
                            // SizedBox(
                            //   height: 90,
                            // ),
                            // pagedots()
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                                width: 400,
                                margin: EdgeInsets.only(bottom: 6),
                                height: 300,
                                child: Image.asset('asset/images/splash4.png')),
                            Text(
                              'راقب ونظم تجارتك بسهولة',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: 'main'),
                            ),
                            // SizedBox(
                            //   height: 80,
                            // ),
                            // pagedots()
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: 400,
                                height: 320,
                                margin: EdgeInsets.only(bottom: 19),
                                child: Image.asset('asset/images/splash3.png')),
                            Text(
                              'تطبيق لإدارة أموالك باحترافية  \nالشخصية....',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'main'),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()),
                                );
                              },
                              child: Container(
                                width: 250,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(56, 31, 154, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'لنبدأ ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'main',
                                        fontSize: 19),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 14,
                            // ),
                            // pagedots()
                          ],
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    color: maincolor,
                    width: double.infinity,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [pagedots()],
                    )),
              )
            ],
          ),
        ));
  }
}




//  Container(
//                                 width: 500,
//                                 height: 350,
//                                 child: Image.asset('asset/image/splash1.png')),