import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/Taqarerss_View.dart';
import 'package:mym/views/main_View.dart';
import 'package:mym/views/paymentvoucher_View.dart';
import 'package:mym/views/processingItems/customers_View.dart';
import 'package:mym/views/processingItems/delivery_View.dart';
import 'package:mym/views/processingItems/kinds_View.dart';
import 'package:mym/views/processingItems/providers_View.dart';
import 'package:mym/views/processingItems/vouchers_view.dart';

class processingView extends StatelessWidget {
  const processingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cardColor,
        body: Column(
          children: [
            Expanded(
                flex: MediaQuery.of(context).size.height < 600 ? 3 : 1,
                child: myAppBar('معالـجة واستــلام', context)),
            Expanded(
              flex: 4,
              child: Container(
                child: ListView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomersView()));
                      },
                      child: newCard('زبائن'),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProvidersView()));
                        },
                        child: newCard('موردون')),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => deliveryView()));
                        },
                        child: newCard('شباب التوصيل')),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KindsView()));
                        },
                        child: newCard('الأصنـــاف')),
                    newCard('الفواتير'),
                    InkWell(
                      child: newCard('سندات'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vouchersView()));
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: maincolor,
                    )))
          ],
        ),
      ),
    );
  }
}
