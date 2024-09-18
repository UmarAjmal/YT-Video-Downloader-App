import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_yt_dwonloader/pages/mainpage.dart';
import 'package:my_yt_dwonloader/provider/controllerbinder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: PermissionBinding(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MainPage(),
    );
  }
}
