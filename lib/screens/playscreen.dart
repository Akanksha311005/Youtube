import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/color/appcolor.dart';
import 'package:youtube/controller/like_controller.dart';
import 'package:youtube/controller/shorts_controller.dart';
import 'package:youtube/custom_widget/custom_container.dart';
import 'package:youtube/custom_widget/custom_profile.dart';

class Playscreen extends StatelessWidget {
  Playscreen({super.key});
  final ShortsController thiscontroller = Get.put(ShortsController());
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final scrrenWidth = MediaQuery.of(context).size.width;
    final LikeController likeController = Get.put(LikeController());
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.black,

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                img:
                    "https://preview.redd.it/crash-landing-on-you-twenty-five-twenty-one-chicago-v0-tmrr2yauq9sa1.gif?width=450&auto=webp&s=f6654ece3edf7a81a89c253feba6f73a2e330815",
              ),
              SizedBox(height: 10, width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Crash Landing On You | Official Trailer | Netflix",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "13 Lakh views 5yr ago ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(height: 20, width: 10),
                      CustomProfile(
                        img:
                            "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Netflix",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Get.snackbar(
                              "Subscribed✨",
                              "Netflix",
                              backgroundColor: const Color.fromARGB(
                                0,
                                74,
                                74,
                                74,
                              ),

                              duration: Duration(seconds: 3),
                            );
                            thiscontroller.changeValue();
                          },
                          child: Text(
                            thiscontroller.mytext.value,
                            style: TextStyle(color: Appcolor.secondarycolor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            likeController.ifliked == true
                                ? Icons.thumb_up
                                : Icons.thumb_up_alt_outlined,
                            color: likeController.ifliked == true
                                ? Colors.white
                                : Colors.grey,
                          ),
                          onPressed: () {
                            likeController.like();
                          },
                        ),
                        Text("12K", style: TextStyle(color: Colors.white)),
                        IconButton(
                          icon: Icon(
                            likeController.isDisliked.value
                                ? Icons.thumb_down
                                : Icons.thumb_down_alt_outlined,
                            color: likeController.isDisliked.value
                                ? Colors.white
                                : Colors.grey,
                          ),
                          onPressed: () {
                            likeController.dislike();
                          },
                        ),
                        SizedBox(width: 9),
                        SizedBox(
                          height: 30,
                          width: 110,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 67, 67, 67),
                              ),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Center(
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            label: Center(
                              child: Text(
                                "Share",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 9),
                        SizedBox(
                          height: 30,
                          width: 140,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 67, 67, 67),
                              ),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Center(
                              child: Icon(
                                Icons.download,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            label: Center(
                              child: Text(
                                "Download",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 9),
                        SizedBox(
                          height: 30,
                          width: 110,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 67, 67, 67),
                              ),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Center(
                              child: Icon(
                                Icons.save,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            label: Center(
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 9),
                        SizedBox(
                          height: 30,
                          width: 110,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 67, 67, 67),
                              ),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Center(
                              child: Icon(
                                Icons.report,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            label: Center(
                              child: Text(
                                "Report",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(43, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Color.fromARGB(36, 255, 255, 255),
                        ),
                        decoration: const InputDecoration(
                          hintText: "Add a comment...",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 249, 246, 246),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),

              SizedBox(height: 20),

              CustomContainer(
                img:
                    "https://1.vikiplatform.com/c/41085c/6c00c21dd0.jpg?x=b&s=480x270&e=t&q=g",
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(height: 20),
                  CustomProfile(
                    img:
                        "https://image.roku.com/developer_channels/prod/c2bc061933595ee0ca07cc48c27909b74bae0496696ed2fbf88c2b4a8a5d5c34.png",
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BITCH X RICH | EP 4 | ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Viki. 4m views.2 years ago",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomContainer(
                img:
                    "https://occ-0-8407-90.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABeizdHXVC_vwnnDSO7vimaI_URC1-d70VShgT8-1-ylEFN8IBtKhsj1qw48HbuJ_V-PPgGKVzRzDTD_ffGc-hXDfURLXQ6CmnsTfueqUTy5wNpxfplKGvNVsEfnH4OD2gKsKGA.webp?r=3d2",
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(height: 20),
                  CustomProfile(
                    img:
                        "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Glory | Official Trailer | ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Viki. 4m views.2 years ago",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
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
