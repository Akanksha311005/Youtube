import 'package:flutter/material.dart';
import 'package:youtube/color/appcolor.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.secondarycolor,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.cast,
            size: 30,
            color: const Color.fromARGB(255, 252, 251, 251),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications,
            size: 30,
            color: const Color.fromARGB(255, 251, 250, 250),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.search,
            size: 30,
            color: const Color.fromARGB(255, 253, 252, 252),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.settings,
            size: 30,
            color: const Color.fromARGB(255, 252, 251, 251),
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Appcolor.secondarycolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/736x/9f/14/e0/9f14e0c255d21659b55038cd462036be.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16, height: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Akanksha Raut",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "@be colurful",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "  .  view channel > ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.switch_account,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: Text(
                        "Switch account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Text(
                        "G",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      label: Text(
                        "Google Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white, size: 18),
                      label: Text(
                        "Turn on Incognito",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStatePropertyAll(
                        BorderSide(color: Colors.grey),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://itswynnesworld.com/wp-content/uploads/2024/04/queen-of-tears.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Queen Of Tears",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 25),
                          Icon(Icons.more_vert, color: Colors.white, size: 18),
                        ],
                      ),
                      Text(
                        "Dailymotion",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.nme.com/wp-content/uploads/2023/11/jungkook-bts-times-square-surprise-concert-getty.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Jungkook Live ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 25),
                          Icon(Icons.more_vert, color: Colors.white, size: 18),
                        ],
                      ),
                      Text(
                        "BANGTANTV",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://pbs.twimg.com/media/FMFtbNKacAEh3UQ.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "F4 Thailand      ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 25),
                          Icon(Icons.more_vert, color: Colors.white, size: 18),
                        ],
                      ),
                      Text(
                        "viki",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.bollywoodmdb.com/post/ShivangiJoshi13_1691149973388.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Barsatein          ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 25),
                          Icon(Icons.more_vert, color: Colors.white, size: 18),
                        ],
                      ),
                      Text(
                        "SONYLIV",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/37f1b8185159117.655ecde10e4e5.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "The Devil's Plan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 25),
                          Icon(Icons.more_vert, color: Colors.white, size: 18),
                        ],
                      ),
                      Text(
                        "Netflix",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Playlists Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlists",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 24),
                      SizedBox(width: 16),
                      OutlinedButton(
                        style: ButtonStyle(
                          side: WidgetStatePropertyAll(
                            BorderSide(color: Colors.grey),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.news18.com/ibnlive/uploads/2022/04/tmkoc-16509445464x3.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.thumb_up, color: Colors.white, size: 30),
                            SizedBox(height: 8),
                            Text(
                              "197",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Liked videos",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Private",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),

                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://s3.ap-south-1.amazonaws.com/stage.radixweb.com/medium_Tutorial_to_learn_flutter_for_beginners_5ed4e05330.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Watch later",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 50),
                          Icon(Icons.more_vert, color: Colors.white, size: 18),
                        ],
                      ),
                      Text(
                        "Private",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 160,
                        margin: EdgeInsets.only(right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFcyRGCb9yCNV1WhhyZitH7am-d1sTnBUMGKBU8qmtAFAmJ0DxfCFNMK1bmblTp021WsI&usqp=CAU",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  "Fav",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 110),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 18,
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
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.play_arrow, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Your Videos",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.download, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Downloads",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Badges",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(height: 0.5, width: double.infinity, color: Colors.grey),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.movie, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Your Movies",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.workspace_premium, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Youtube Premium",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(height: 0.5, width: double.infinity, color: Colors.grey),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.timeline, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Time Watched",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.help, color: Colors.white, size: 24),
                SizedBox(width: 18),
                Text(
                  "Help and feedback",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
