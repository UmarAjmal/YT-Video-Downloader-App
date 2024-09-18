import 'package:flutter/material.dart';

import '../widget/main_btn.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Home Page",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SafeArea(child: MainButtonWidget()),
    );
  }
}
