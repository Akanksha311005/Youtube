import 'package:flutter/material.dart';
import 'package:youtube/color/appcolor.dart';
import 'package:youtube/custom_widget/custom_container.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
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
            size: 30,
            color: const Color.fromARGB(255, 244, 243, 243),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications,
            size: 30,
            color: const Color.fromARGB(255, 249, 246, 246),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.search,
            size: 30,
            color: const Color.fromARGB(255, 254, 253, 253),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              height: 290,
              width: double.infinity,
              child: Image.network(
                "https://www.usatoday.com/gcdn/-mm-/b4c5278824be1601ab745285b0a3d5a0a57b635b/c=12-0-2994-1686/local/-/media/USATODAY/USATODAY/2014/02/06//1391726090000-XXX-DISNEY-SOFIA-THE-FIRST.JPG?width=1600&height=800&fit=crop&format=pjpg&auto=webp",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://static.wikia.nocookie.net/disney/images/b/b2/Profile_-_Princess_Sofia.png/revision/latest/thumbnail/width/360/height/360?cb=20231004010206",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sofia the first",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Disney channel. 4m views.4 years ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
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
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://m.media-amazon.com/images/I/61yo34xjLHL._UF1000,1000_QL80_.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://lumiere-a.akamaihd.net/v1/images/p_snowwhiteandthesevendwarfs_19871_806c8934.jpeg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/736x/a1/62/63/a16263531a320fd4eb5b8eef6a46c102.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/736x/00/56/23/005623478dfa8a639a732992521edeaf.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            CustomContainer(img: "https://64.media.tumblr.com/cdece8050f87cea787abc3008ec9ff5b/04293b9d5dd1dd70-70/s1280x1920/fcff268c0827de1e1a692a3b6590140c7ed273b1.png"),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://64.media.tumblr.com/cdece8050f87cea787abc3008ec9ff5b/04293b9d5dd1dd70-70/s1280x1920/fcff268c0827de1e1a692a3b6590140c7ed273b1.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
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
            // Container(
            //   decoration: BoxDecoration(color: Colors.grey),
            //   height: 250,
            //   width: double.infinity,
            //   child: Image.network(
            //     "https://im.idiva.com/content/2020/Aug/gif-3-5_5f34fb8634ecf.gif?w=900&h=507&cc=1",
            //     fit: BoxFit.fill,
            //   ),
            // ),
            CustomContainer(img: "https://im.idiva.com/content/2020/Aug/gif-3-5_5f34fb8634ecf.gif?w=900&h=507&cc=1"),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crash Landing On You | Ep 7 |",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
            CustomContainer(img: "https://64.media.tumblr.com/e2b6bd4703a3a73e7a1f664c06eef265/c2783baaa72f688b-68/s540x810/a1298c903eab8ed7b046d2e0f8bd6ee3b2abddda.gif"),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Demon | Episode 4 |",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
