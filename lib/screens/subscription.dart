import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:youtube/controller/notify_con.dart';
import 'package:youtube/custom_widget/custom_container.dart';
import 'package:youtube/custom_widget/custom_icon.dart';
import 'package:youtube/custom_widget/custom_profile.dart';
import 'package:youtube/custom_widget/customtext.dart';
import 'package:youtube/custom_widget/shorts_container.dart';
import 'package:youtube/routes/app_routes.dart';

// class Subscription extends StatefulWidget {
//   const Subscription({super.key});

//   @override
//   State<Subscription> createState() => _SubscriptionState();
// }

// class _SubscriptionState extends State<Subscription> {
class Subscription extends StatelessWidget {
  Subscription({super.key});

  // String value = "Notify me";
  bool isNotified = false;
  final NotifyCon notifyCon = Get.put(NotifyCon());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Image(
            image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
            ),
          ),
          title: Text(
            "Youtube",
            style: TextStyle(
              color: const Color.fromARGB(255, 248, 247, 247),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 6, 6, 6),
          actions: [
            CustomIcon(icon: Icons.cast),
            SizedBox(width: 10),
            CustomIcon(icon: Icons.notifications),
            SizedBox(width: 10),
            CustomIcon(icon: Icons.search),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://yt3.googleusercontent.com/rG0rKikeMrAf9nIOxtJbRfzZtnfd5yUgy8_WBmgkmR839ZoqkkVPDLkxDkvLVvkEp_QcV_ez8w=s900-c-k-c0x00ffffff-no-rj",
                        ),
                        Column(
                          children: [
                            Text(
                              "Bharat",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                        ),
                        Column(
                          children: [
                            Text(
                              "Dailym..",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://akm-img-a-in.tosshub.com/aajtak/images/story/202307/sony_liv-sixteen_nine_0.jpg?size=1280:720",
                        ),
                        Column(
                          children: [
                            Text(
                              "Sonyliv",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://image.roku.com/developer_channels/prod/c2bc061933595ee0ca07cc48c27909b74bae0496696ed2fbf88c2b4a8a5d5c34.png",
                        ),

                        Column(
                          children: [
                            Text("Viki", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                        ),
                        Column(
                          children: [
                            Text(
                              "Netflix",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://pbs.twimg.com/profile_images/1740338476736815104/vJGKgOJe_400x400.jpg",
                        ),
                        Column(
                          children: [
                            Text(
                              "Disney",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomProfile(
                          img:
                              "https://qph.cf2.quoracdn.net/main-qimg-4821aeef9a8638fe278299289e3ffba2-lq",
                        ),
                        Column(
                          children: [
                            Text("BTS", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 246, 243, 243),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},

                      label: Text(
                        "All",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 6, 6, 6),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},

                      label: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},

                      label: Text(
                        "videos",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},

                      label: Text(
                        "Shorts",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),

                    SizedBox(width: 15),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},

                      label: Text(
                        "Live",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.play);
                    },
                    child: CustomContainer(
                      color: Colors.red,
                      img:
                          "https://www.billboard.com/wp-content/uploads/2023/11/15-jung-kook-tsx-stage-nyc-2023-billboard-1548.jpg?w=800",
                      badgeText: "LIVE",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10, width: 10),

              SingleChildScrollView(
                child: Row(
                  children: [
                    CustomProfile(
                      img:
                          "https://yt3.googleusercontent.com/pbESKAjfNT6bL7WjlWxbyiJ2h8ceCOKYLJwpo2ZM8gCesyGCWZbVtJ8VVuIxhRk-QOwU64ou=s160-c-k-c0x00ffffff-no-rj",
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: "Jung Kook Live at TSX",
                          subtitle: "BANGTANTV . 184k views . 1 day ago",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  CustomContainer(
                    color: const Color.fromARGB(95, 186, 185, 185),
                    img:
                        "https://i.pinimg.com/originals/d7/75/2a/d7752aef29c29581be8275676060619d.gif",
                    badgeText: 'Upcoming',
                  ),
                ],
              ),
              SizedBox(height: 10),

              SingleChildScrollView(
                child: Row(
                  children: [
                    CustomProfile(
                      img:
                          "https://yt3.googleusercontent.com/pbESKAjfNT6bL7WjlWxbyiJ2h8ceCOKYLJwpo2ZM8gCesyGCWZbVtJ8VVuIxhRk-QOwU64ou=s160-c-k-c0x00ffffff-no-rj",
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: "BTS new album",
                          subtitle: "BANGTANTV",
                        ),

                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Scheduled for 31/10/2025,12.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),

                        ElevatedButton.icon(
                          onPressed: () {
                            notifyCon.notifyManager();
                            Get.snackbar(
                              "BANGTANTV",
                              "A notification will be sent when it's about to start",
                              colorText: Colors.white,
                              backgroundColor: const Color.fromARGB(
                                53,
                                0,
                                0,
                                0,
                              ),
                              duration: Duration(seconds: 3),
                            );
                          },
                          icon: Icon(
                            notifyCon.isNotified.value
                                ? Icons.notifications_active
                                : Icons.notifications_none,
                            color: Colors.white,
                          ),
                          label: Text(
                            notifyCon.isNotified.value
                                ? 'Notified'
                                : 'Notify me',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[900],
                            padding: EdgeInsets.symmetric(
                              horizontal: 112,
                              vertical: 9,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 14, 13, 13),
                    ),
                    height: 40,
                    width: 40,
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Youtube_shorts_icon.svg/1649px-Youtube_shorts_icon.svg.png",
                      height: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Shorts",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShortsContainer(
                      img:
                          "https://media1.tenor.com/m/AXtIaUYaJRsAAAAd/queen-of-tears-kimsoohyun.gif",
                    ),
                    SizedBox(width: 10),
                    ShortsContainer(
                      img:
                          "https://thedailyrendezvous.wordpress.com/wp-content/uploads/2021/08/tumblr_7d867d6e756cdaecf465ff0ec8f71451_e7895c69_500.gif?w=500",
                    ),
                    SizedBox(width: 10),
                    ShortsContainer(img: "https://i.gifer.com/UMsN.gif"),
                    SizedBox(width: 10),
                    ShortsContainer(
                      img:
                          "https://i.pinimg.com/originals/65/88/92/658892237e34915416c339f33c8eccc7.gif",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Column(
                children: [
                  CustomContainer(color: const Color.fromARGB(95, 186, 185, 185), img: "https://66.media.tumblr.com/0a8661bdbed365a1a1ecce020492cbba/tumblr_oqgxybjs6f1vc6wuyo2_r1_540.gifv", badgeText: '56:30'),
                  SizedBox(height: 10),

                  SingleChildScrollView(
                    child: Row(
                      children: [
                        CustomProfile(
                          img:
                              "https://image.roku.com/developer_channels/prod/c2bc061933595ee0ca07cc48c27909b74bae0496696ed2fbf88c2b4a8a5d5c34.png",
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "Crash landing on you | ep 2 |",
                              subtitle: "Viki . 678k views . 1 year ago",
                            ),
                          ],
                        ),
                      ],
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
