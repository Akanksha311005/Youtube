import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube/color/appcolor.dart';
import 'package:youtube/custom_widget/custom_container.dart';
import 'package:youtube/custom_widget/custom_icon.dart';
import 'package:youtube/custom_widget/custom_profile.dart';
import 'package:youtube/custom_widget/customtext.dart';
import 'package:youtube/custom_widget/shorts_container.dart';
import 'package:youtube/routes/app_routes.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Future<void> logout() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      prefs.remove('token');
      Get.offNamed(AppRoutes.loginscreen); // Redirect to login screen
    }

    return Scaffold(
      backgroundColor: Appcolor.secondarycolor,
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
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: "Logout",
                middleText: "Are you sure you want to logout?",
                textConfirm: "Yes",
                textCancel: "No",
                confirmTextColor: Colors.white,
                onConfirm: () {
                  logout();
                },
              );
            },
            icon: CustomIcon(icon: Icons.more_vert),
            
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.play);
              },

              child: CustomContainer(
                color: const Color.fromARGB(95, 186, 185, 185),
                img: "https://i.ytimg.com/vi/GVQGWgeVc4k/maxresdefault.jpg",
                badgeText: '2:09',
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(height: 10),
                CustomProfile(
                  img:
                      "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Crash Landing On You",
                      subtitle: "Netflix",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: Image.network(
                    "https://www.droid-life.com/wp-content/uploads/2021/03/YouTube-Shorts-3-1200x1200-cropped.jpg",
                  ),
                ),
                Text(
                  "Shorts",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 265)),
                CustomIcon(icon: Icons.more_vert),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ShortsContainer(
                    img:
                        "https://m.media-amazon.com/images/I/61yo34xjLHL._UF1000,1000_QL80_.jpg",
                  ),
                  SizedBox(width: 10),
                  ShortsContainer(
                    img:
                        "https://lumiere-a.akamaihd.net/v1/images/p_snowwhiteandthesevendwarfs_19871_806c8934.jpeg",
                  ),
                  SizedBox(width: 10),
                  ShortsContainer(
                    img:
                        "https://i.pinimg.com/736x/a1/62/63/a16263531a320fd4eb5b8eef6a46c102.jpg",
                  ),
                  SizedBox(width: 10),
                  ShortsContainer(
                    img:
                        "https://i.pinimg.com/736x/00/56/23/005623478dfa8a639a732992521edeaf.jpg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomContainer(
              color: const Color.fromARGB(95, 186, 185, 185),
              img:
                  "https://lumiere-a.akamaihd.net/v1/images/image_19221b22.jpeg",
              badgeText: '1:50:09',
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(height: 10),
                CustomProfile(
                  img:
                      "https://64.media.tumblr.com/cdece8050f87cea787abc3008ec9ff5b/04293b9d5dd1dd70-70/s1280x1920/fcff268c0827de1e1a692a3b6590140c7ed273b1.png",
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Beauty and the beast",
                      subtitle: "Disney channel . 7m views . 5 years ago",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomContainer(
              color: const Color.fromARGB(95, 186, 185, 185),
              img:
                  "https://64.media.tumblr.com/12c8c1f088f71ff2acacaf598a3f50c0/ab610409ec23ab32-e6/s500x750/abdf68d6b8c77f041474ea3dfdac41550ccc0b96.gifv",
              badgeText: '59:08',
            ),

            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(height: 10),
                CustomProfile(
                  img:
                      "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Vincenzo | Ep 7 |",
                      subtitle: "Dailymotion . 80M views . 1 years ago",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            CustomContainer(
              color: const Color.fromARGB(95, 186, 185, 185),
              img:
                  "https://img-cdn.thepublive.com/filters:format(webp)/elle-india/media/post_attachments/buzzfeed-static/static/2021-02/2/5/asset/43d236a0b24a/anigif_sub-buzz-8752-1612245535-20.gif",
              badgeText: '1:08:09',
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(height: 10),
                CustomProfile(
                  img:
                      "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Legend of the blue sea | Ep 4 |",
                      subtitle: "Dailymotion . 80M views . 1 years ago",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
