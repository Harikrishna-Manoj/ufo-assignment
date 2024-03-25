import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ufs/constant/const.dart';
import 'package:ufs/presentation/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppConstant.backgroundGradientColor1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 12, left: 12),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailContainers(),
                const SizedBox(
                  height: 25,
                ),
                const HeadingText(),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Featured Training",
                      style: TextStyle(
                          color: AppConstant.textDarkBlueColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: const Center(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HorizontalScrollItems(
                              image: "assets/image/employee2.jpeg",
                              heading: "Zipeline Training",
                              details:
                                  "Experience the ultimate thrill\nwith our Zipline Training\nprogram",
                              amount: "1500"),
                          SizedBox(
                            width: 20,
                          ),
                          HorizontalScrollItems(
                              image: "assets/image/employee1.jpg",
                              heading: "Civil Training",
                              details:
                                  "Experience the ultimate thrill\nwith our Zipline Training\nprogram",
                              amount: "1500"),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Accreditation",
                  style: TextStyle(
                      color: AppConstant.textDarkBlueColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                SizedBox(
                  height: h * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 75,
                          width: 141,
                          child: Image.asset("assets/image/company_image1.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          height: 75,
                          width: 141,
                          child: Image.asset("assets/image/company_image2.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          height: 75,
                          width: 141,
                          child: Image.asset("assets/image/company_image1.png"),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "See what our customer says",
                  style: TextStyle(
                      color: AppConstant.textDarkBlueColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                SizedBox(
                  height: h * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomerFeedbacks(h: h, w: w),
                        const SizedBox(
                          width: 12,
                        ),
                        CustomerFeedbacks(h: h, w: w),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                const Text(
                  "Our Clinets",
                  style: TextStyle(
                      color: AppConstant.textDarkBlueColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: h * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 75,
                          width: 141,
                          child: Image.asset("assets/image/client1.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          height: 75,
                          width: 141,
                          child: Image.asset("assets/image/client2.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          height: 75,
                          width: 141,
                          child: Image.asset("assets/image/client1.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
