import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mym/services/category/category_services.dart';
import 'package:mym/views/splashscreen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // print(await CategoryServicesImp().getAllCategory());
  WidgetsFlutterBinding.ensureInitialized();
  // await initializeDateFormatting('ar'); // تهيئة بيانات اللغة المحلية للعربية
  runApp(
    const MyApp(),
  );
}

///حتى تشوف الوضع بشكل اسهل
///
///DevicePreview(
//   enabled: !kReleaseMode,
//   builder: (context) => const MyApp(),
// )
///
///
///
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'main'),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const SafeArea(
        child: SplashScreen(),
      ),
    );
  }
}
