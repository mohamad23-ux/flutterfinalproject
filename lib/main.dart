import 'package:flutter/material.dart';
import 'package:mym/views/splashscreen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting('ar'); // تهيئة بيانات اللغة المحلية للعربية
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'main'),
      home: SafeArea(
        child: splashScreen(),
      ),
    );
  }
}
