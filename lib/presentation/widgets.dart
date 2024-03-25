import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:ufs/constant/const.dart';

class TabIcons extends StatelessWidget {
  const TabIcons({
    super.key,
    required this.iconImage,
    required this.labelText,
  });
  final String iconImage;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 26,
          height: 26,
          child: Image.asset(iconImage),
        ),
        Text(labelText)
      ],
    );
  }
}

class HorizontalScrollItems extends StatelessWidget {
  const HorizontalScrollItems({
    super.key,
    required this.image,
    required this.heading,
    required this.details,
    required this.amount,
  });
  final String image;
  final String heading;
  final String details;
  final String amount;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: w * 0.75,
          height: h * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(Radius.circular(18))),
        ),
        Container(
          width: w * 0.75,
          height: h * 0.35,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, .6],
              colors: <Color>[Colors.black, Color.fromARGB(0, 255, 255, 255)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20, right: 11),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          heading,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          details,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 21,
                      width: 21,
                      decoration: const BoxDecoration(
                          color: AppConstant.selectedTabOrangeColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: const Center(
                        child: Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Stack(
                  children: [
                    const BlurContainer(
                        height: 43,
                        child: Row(
                          children: [
                            Text(
                              "AED ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppConstant.aedGrayColor),
                            ),
                            Text(
                              "1500",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        )),
                    Container(
                      height: 43,
                      width: 120,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppConstant.selectedTabOrangeColor),
                      child: const Center(
                          child: Text(
                        "Take a look",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BlurContainer extends StatelessWidget {
  final Widget child;

  final double? height;

  final double? width;

  final double elevation;

  final double blur;

  final EdgeInsetsGeometry padding;

  final Color color;

  final BorderRadius borderRadius;

  const BlurContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      color: color,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            height: height,
            width: width,
            padding: padding,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Exploer our",
          style: TextStyle(
              color: AppConstant.textDarkBlueColor,
              fontWeight: FontWeight.w700,
              fontSize: 40),
        ),
        Row(
          children: [
            Text(
              "various ",
              style: TextStyle(
                  color: AppConstant.textDarkBlueColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
            ),
            StrokeText(
              text: "training",
              textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: AppConstant.backgroundGradientColor1),
              strokeColor: AppConstant.textDarkBlueColor,
              strokeWidth: 2,
            ),
          ],
        ),
      ],
    );
  }
}

class DetailContainers extends StatelessWidget {
  const DetailContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DetailContainer(
            numberContainerColor: AppConstant.numberBoxColorPurple,
            containerColor: AppConstant.detailBoxColorPurple,
            details: "Upcoming\nInspections",
            numberDetail: "15"),
        DetailContainer(
            numberContainerColor: AppConstant.numberBoxColorViolet,
            containerColor: AppConstant.detailBoxColorViolet,
            details: "Total\nLocations",
            numberDetail: "5"),
      ],
    );
  }
}

class CustomerFeedbacks extends StatelessWidget {
  const CustomerFeedbacks({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: h * 0.3,
        width: w * 0.9,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    child: Image.asset("assets/image/client.png"),
                  ),
                  SizedBox(
                    height: 55,
                    width: 55,
                    child: Image.asset("assets/image/quotes.png"),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 15,
                    width: 95,
                    child: Image.asset("assets/image/company_name.png")),
                const Text(
                  "Contrary to popular belief, Lorem\nIpsum is not simply random text.\nIt has roots in a piece of \nclassical Latin\nliterature from 45 BC",
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 29,
                      color: const Color.fromARGB(255, 0, 46, 83),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jerin Thomas"),
                        Text(
                          "CEO & CO-FOUNDER OF ARABTEC",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    super.key,
    required this.containerColor,
    required this.details,
    required this.numberDetail,
    required this.numberContainerColor,
  });

  final Color containerColor;
  final Color numberContainerColor;

  final String details;
  final String numberDetail;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Container(
      height: 57,
      width: h * 0.2,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: containerColor),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 12,
            child: Text(
              details,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppConstant.textDarkBlueColor),
              maxLines: 2,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                  color: numberContainerColor,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: Text(
                  numberDetail,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppConstant.textDarkBlueColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DashIcon extends StatelessWidget {
  const DashIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashIconElements(),
                SizedBox(
                  width: 1,
                ),
                DashIconElements()
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashIconElements(),
                SizedBox(
                  width: 1,
                ),
                DashIconElements()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashIconElements extends StatelessWidget {
  const DashIconElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
    );
  }
}
