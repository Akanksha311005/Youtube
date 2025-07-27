import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/color/appcolor.dart';
import 'package:youtube/custom_widget/custom_container.dart';
import 'package:youtube/custom_widget/custom_profile.dart';
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
          Icon(
            Icons.cast,
            size: screenWidth*0.07,
            color: const Color.fromARGB(255, 244, 243, 243),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications,
            size: screenWidth*0.07,
            color: const Color.fromARGB(255, 249, 246, 246),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.search,
            size: screenWidth*0.07,
            color: const Color.fromARGB(255, 254, 253, 253),
          ),
          SizedBox(width: 10),
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
                img: "https://i.ytimg.com/vi/GVQGWgeVc4k/maxresdefault.jpg",
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(height: 20),
                CustomProfile(
                  img:
                      "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crash Landing On You",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth*0.05,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Netflix . 34M views . 2 days ago",
                      style: TextStyle(color: Colors.grey),
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
                Padding(padding: const EdgeInsets.only(left: 250)),
                Icon(Icons.more_vert, color: Colors.white),
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
              img:
                  "https://lumiere-a.akamaihd.net/v1/images/image_19221b22.jpeg",
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                CustomProfile(
                  img:
                      "https://64.media.tumblr.com/cdece8050f87cea787abc3008ec9ff5b/04293b9d5dd1dd70-70/s1280x1920/fcff268c0827de1e1a692a3b6590140c7ed273b1.png",
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beauty and the beast",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Disney channel . 7m views . 5 years ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),

            CustomContainer(
              img:
                  "https://64.media.tumblr.com/12c8c1f088f71ff2acacaf598a3f50c0/ab610409ec23ab32-e6/s500x750/abdf68d6b8c77f041474ea3dfdac41550ccc0b96.gifv",
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                CustomProfile(
                  img:
                      "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vincenzo | Ep 7 |",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Dailymotion . 80M views . 1 years ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            //
            CustomContainer(
              img:
                  "https://img-cdn.thepublive.com/filters:format(webp)/elle-india/media/post_attachments/buzzfeed-static/static/2021-02/2/5/asset/43d236a0b24a/anigif_sub-buzz-8752-1612245535-20.gif",
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                CustomProfile(
                  img:
                      "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Legend of the blue sea | Ep 4 |",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Dailymotion . 80M views . 1 years ago",
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
  }
}
