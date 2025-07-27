import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:youtube/color/appcolor.dart';
import 'package:youtube/controller/shorts_controller.dart';
import 'package:youtube/custom_widget/custom_profile.dart';
import 'package:youtube/custom_widget/customtext.dart';

class Shorts extends StatelessWidget {
  Shorts({super.key});

  final ShortsController thiscontroller = Get.put(ShortsController());
  String value = "Subscribe";
  //  String = value;
  @override
  Widget build(BuildContext context) {
    print("😥😥😥😥😥😥😥😥😥");
    return Obx(() {
      return Scaffold(
        backgroundColor: Appcolor.secondarycolor,
        appBar: AppBar(
          leading: Image(
            image: NetworkImage(
              "https://www.droid-life.com/wp-content/uploads/2021/03/YouTube-Shorts-3-1200x1200-cropped.jpg",
            ),
          ),
          title: Text(
            "Shorts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Appcolor.secondarycolor,
          actions: [Icon(Icons.more_vert, color: Colors.white)],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 820,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://thedailyrendezvous.wordpress.com/wp-content/uploads/2021/08/tumblr_7d867d6e756cdaecf465ff0ec8f71451_e7895c69_500.gif?w=500",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 740),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomProfile(
                            img:
                                "https://yt3.googleusercontent.com/ytc/AIdro_kuMeIFzmBh7miBgkx93Dam8_wlj7xK8MefHeF1xLYOKhQw=s900-c-k-c0x00ffffff-no-rj",
                          ),
                          SizedBox(width: 15, height: 50),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "kdrama_shorts",
                                    subtitle: "Viki . 4k views ",
                                  ),
                                ],
                              ),
                              // SizedBox(width: 15

                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.snackbar(
                                      "Subscribed✨",
                                      "${thiscontroller.channelname}",
                                      backgroundColor: const Color.fromARGB(
                                        114,
                                        239,
                                        237,
                                        237,
                                      ),
                                      duration: Duration(seconds: 3),
                                    );
                                    thiscontroller.changeValue();
                                  },
                                  child: Text(
                                    thiscontroller.mytext.value,
                                    style: TextStyle(
                                      color: Appcolor.secondarycolor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    height: 820,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://media4.giphy.com/media/v1.Y2lkPTZjMDliOTUyemd5eTEzeHdhdXFicmxnM3p0em0wdmtramF3OGE2aWY1MThwN2FtbSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/7qlQAzqdYYSNa/source.gif",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 740),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomProfile(
                                img:
                                    "https://i.pinimg.com/564x/bb/9b/ba/bb9bbaa6d5aa5280722a0f8682f1fd7a.jpg",
                              ),
                              SizedBox(width: 15, height: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Rapunzal Shorts",
                                    subtitle: "Disney channel . 4k views ",
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Get.snackbar(
                                    "Subscribed✨",
                                    "Disney Channel",
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      165,
                                      165,
                                      165,
                                    ),
                                    duration: Duration(seconds: 3),
                                  );
                                  thiscontroller.changeValue();
                                },
                                child: Text(
                                  thiscontroller.mytext.value,
                                  style: TextStyle(
                                    color: Appcolor.secondarycolor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
