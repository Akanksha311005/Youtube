import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  // String value = "Notify me";
  bool isNotified = false;

  @override
  Widget build(BuildContext context) {
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
          Icon(
            Icons.cast,
            size: 25,
            color: const Color.fromARGB(255, 244, 243, 243),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications,
            size: 25,
            color: const Color.fromARGB(255, 249, 246, 246),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.search,
            size: 25,
            color: const Color.fromARGB(255, 254, 253, 253),
          ),
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
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://yt3.googleusercontent.com/rG0rKikeMrAf9nIOxtJbRfzZtnfd5yUgy8_WBmgkmR839ZoqkkVPDLkxDkvLVvkEp_QcV_ez8w=s900-c-k-c0x00ffffff-no-rj",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text("Bharat", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
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
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://akm-img-a-in.tosshub.com/aajtak/images/story/202307/sony_liv-sixteen_nine_0.jpg?size=1280:720",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://image.roku.com/developer_channels/prod/c2bc061933595ee0ca07cc48c27909b74bae0496696ed2fbf88c2b4a8a5d5c34.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1740338476736815104/vJGKgOJe_400x400.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text("Disney", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://qph.cf2.quoracdn.net/main-qimg-4821aeef9a8638fe278299289e3ffba2-lq",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://www.billboard.com/wp-content/uploads/2023/11/15-jung-kook-tsx-stage-nyc-2023-billboard-1548.jpg?w=800",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 100, top: 215, right: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.podcasts, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://yt3.googleusercontent.com/pbESKAjfNT6bL7WjlWxbyiJ2h8ceCOKYLJwpo2ZM8gCesyGCWZbVtJ8VVuIxhRk-QOwU64ou=s160-c-k-c0x00ffffff-no-rj",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jung Kook Live at TSX",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 246, 243, 243),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "BANGTANTV",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/d7/75/2a/d7752aef29c29581be8275676060619d.gif",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 100, top: 215, right: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 86, 85, 85),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Upcoming',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://yt3.googleusercontent.com/pbESKAjfNT6bL7WjlWxbyiJ2h8ceCOKYLJwpo2ZM8gCesyGCWZbVtJ8VVuIxhRk-QOwU64ou=s160-c-k-c0x00ffffff-no-rj",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BTS new album",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 246, 243, 243),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "BANGTANTV",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Scheduled for 31/10/2025,12.00",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      // SizedBox(width:20 ),
                      //   ElevatedButton(
                      //           style: ButtonStyle(
                      //             backgroundColor: WidgetStatePropertyAll(
                      //               const Color.fromARGB(255, 72, 71, 71),
                      //             ),
                      //           ),
                      //           onPressed: () {
                      //             setState(() {
                      //               if (value == "Notify me ") {
                      //                 value = "Notification on";
                      //               } else {
                      //                 value = "Notify me";
                      //               }
                      //             });
                      //           },
                      //           child: Text(
                      //             "$value",
                      //             style: TextStyle(
                      //               color: const Color.fromARGB(255, 181, 180, 180),
                      //             ),
                      //           ),
                      //         ),
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            isNotified = !isNotified;
                          });
                        },
                        icon: Icon(
                          isNotified
                              ? Icons.notifications_active
                              : Icons.notifications_none,
                          color: Colors.white,
                        ),
                        label: Text(
                          isNotified ? 'Notified' : 'Notify me',
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
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://media1.tenor.com/m/AXtIaUYaJRsAAAAd/queen-of-tears-kimsoohyun.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://thedailyrendezvous.wordpress.com/wp-content/uploads/2021/08/tumblr_7d867d6e756cdaecf465ff0ec8f71451_e7895c69_500.gif?w=500",
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
                          "https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/5cacbdb6-ebb0-4721-be03-c1a1e3fed055_crash-landing-on-you-gif-running-2.gif",
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
                          "https://64.media.tumblr.com/9e8cc2af721f03f0109e0709d2493e6c/e3e55f34d5a37e69-0e/s540x810/d18dfaf33f5ea3ae28258d1ab933408be746077f.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Column(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://img.buzzfeed.com/buzzfeed-static/static/2022-04/29/5/asset/befd9e605309/anigif_sub-buzz-6031-1651208444-8.gif",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                SingleChildScrollView(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://static1.dmcdn.net/images/dailymotion-logo-ogtag-new.png.va3e30462476a82772",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Business Proposal | ep 2 |",
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 246, 243, 243),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Dailymotiomn",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
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
  }
}
