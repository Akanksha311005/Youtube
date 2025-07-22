import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:youtube/color/appcolor.dart';
import 'package:youtube/controller/shorts_controller.dart';

class Shorts extends StatefulWidget {
  Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
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
                      "https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExaGVvMXN1N3ppMnJvcmllbHN1aDV6c2NvdzcybWthbjlhbTN1ZXhvZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/D0h583flkaxvVYc6Bh/giphy.gif",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 740),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://w7.pngwing.com/pngs/781/97/png-transparent-disney-channel-television-channel-the-walt-disney-company-disney-xd-tv-news-television-text-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 15, height: 50),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gif_offical",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        247,
                                        246,
                                        246,
                                      ),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "Disney channel . 4k views ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              // SizedBox(width: 15

                              // ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Get.snackbar(
                                    "Subscribed",
                                    "${thiscontroller.channelname}",
                                    backgroundColor: Colors.blue,
                                    duration: Duration(seconds: 10),
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
                          "https://64.media.tumblr.com/edc088ca1ed0fa6d964fc975e4f44bec/112dae52a7f12a04-c0/s540x810/ee64388ab011a9701dcf9dce2c9302aae1140c1c.gif",
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
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://i.pinimg.com/564x/bb/9b/ba/bb9bbaa6d5aa5280722a0f8682f1fd7a.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15, height: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rapunzal Shorts",
                                    style: TextStyle(
                                      color: Appcolor.secondarycolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Disney channel . 4k views ",
                                    style: TextStyle(color: Colors.grey),
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
