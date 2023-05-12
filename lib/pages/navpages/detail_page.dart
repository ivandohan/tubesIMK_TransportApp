import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transport_app/misc/colors.dart';
import 'package:transport_app/widgets/app_large_text.dart';
import 'package:transport_app/widgets/app_text.dart';
import 'package:transport_app/widgets/button_responsive.dart';
import 'package:transport_app/widgets/detail_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final int gottenStar = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/mountain.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 300,
                child: Container(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  height: MediaQuery.of(context).size.height - 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: r"$250",
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          AppText(
                            text: "USA, California",
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStar
                                      ? Colors.yellow
                                      : AppColors.textColor1);
                            }),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("(4.0)"),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Number of people on your group.",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                if (selectedIndex == index) {
                                  selectedIndex = -1;
                                } else {
                                  selectedIndex = index;
                                }
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: DetailButton.text(
                                size: 60,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                textSize: 17,
                                text: (index + 1).toString(),
                                textColor: selectedIndex == index
                                    ? Colors.white
                                    : AppColors.textColor1,
                                borderColor: AppColors.mainColor,
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "Description",
                        size: 20,
                        color: Colors.black.withOpacity(0.8),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text:
                            "In this article, we’ll learn how to add space between widgets. There are many options available in flutter which you can use to provide space and make UI attractive.",
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    DetailButton.icon(
                      backgroundColor: Colors.white,
                      size: 60,
                      borderColor: AppColors.mainTextColor,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ButtonResponsive.text(
                      isResponsive: true,
                      text: "Book Now",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
