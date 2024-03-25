import 'package:flutter/material.dart';
import 'package:ufs/constant/const.dart';
import 'package:ufs/presentation/screen1.dart';
import 'package:ufs/presentation/screen2.dart';
import 'package:ufs/presentation/screen3.dart';
import 'package:ufs/presentation/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: w,
          height: h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [.04, 0.2],
              colors: [
                AppConstant.backgroundGradientColor2,
                AppConstant.backgroundGradientColor1,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DashIcon(),
                const SizedBox(
                  height: 32,
                ),
                DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const TabBar(
                          labelColor: AppConstant.textDarkBlueColor,
                          unselectedLabelColor: Colors.black,
                          indicatorColor: AppConstant.selectedTabOrangeColor,
                          tabs: [
                            Tab(
                              child: TabIcons(
                                  iconImage: "assets/image/icons/tab_icon1.png",
                                  labelText: "Training"),
                            ),
                            Tab(
                              child: TabIcons(
                                  iconImage: "assets/image/icons/tab_icon2.png",
                                  labelText: "Inspection"),
                            ),
                            Tab(
                              child: TabIcons(
                                  iconImage: "assets/image/icons/tab_icon3.png",
                                  labelText: "Calibration"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.75,
                          child: const Flex(
                            direction: Axis.vertical,
                            children: [
                              Flexible(
                                child: TabBarView(
                                  children: [
                                    Screen1(),
                                    Screen2(),
                                    Screen3(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
