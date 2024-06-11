import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}

Widget TextFile(String text) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(9),
    child: TextField(
      style: TextStyle(fontFamily: 'main'),
      textDirection: TextDirection.rtl, // تحديد اتجاه النص من اليمين لليسار
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(21),
            borderSide: BorderSide(color: maincolor)),
        labelText: text,
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
  );
}

///////
///Controllers of سند الدفع 
///1-paymentVouchermoney,
///2-paymentVoucherKind,
///3-paymentVouchertype,
//////Controllers of سند القبض 
///1-recVouchermoney,
///2-recmentVoucherKind,
///3-recmentVouchertype,