import 'package:ecom_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(),
    );
  }
}
