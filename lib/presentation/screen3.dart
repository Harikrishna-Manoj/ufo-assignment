import 'package:flutter/material.dart';
import 'package:ufs/constant/const.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstant.backgroundGradientColor1,
      body: Center(
        child: Text("screen3"),
      ),
    );
  }
}
