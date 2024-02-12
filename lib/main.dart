import 'package:flutter/material.dart';

import 'Widgets/Appbar/Appbar.dart';
// import 'Widgets/Corousel/Corousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: SafeArea(
            child: CustomAppBar(),
          ),
        ),
        body: Center(
          child: Text("ty"),
        ),
      ),
    );
  }
}
