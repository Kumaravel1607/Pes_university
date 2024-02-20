import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Screens/BookDetails.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<Image> banner = [
    Image(
      image: AssetImage(
        'assets/images/img1.jpeg',
      ),
    ),
    Image(
      image: AssetImage('assets/images/img2.jpeg'),
    ),
    Image(
      image: AssetImage('assets/images/img3.jpg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 3,
        title: Image.asset(
          "assets/images/peslogo.png",
          height: 50,
          width: 100,
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: banner_carousel(),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'New Arrivals',
                    //  textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: List_view(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget banner_carousel() =>
      //{ return
      //  banner.length != 0
      //     ?

      new Container(
        // height: MediaQuery.of(context).size.height / 2,
        child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              viewportFraction: 1.0,
              // aspectRatio: 2.0,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayCurve: Curves.easeInCubic,
              enlargeCenterPage: false,
              reverse: false,
            ),
            itemCount: banner.length,
            itemBuilder: (context, index, int) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/images/img1.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ));
                },
              );
            }),
      );
  //: Container();

  Widget List_view() => ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (BuildContext context) =>
            //        //  ProjectUpdatesPage(projectID: projects[index].id,title: projects[index].project_name,)
            // ));
          },
          child: Card(
            elevation: 5,
            shadowColor: greylite,
            color: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/img4.png',
                        width: 90,
                        height: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Java 6 programming',
                              //  textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: black,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Authors: Kogent Learning Solutions Inc",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "ID:  PU2796 ( PESU Books )",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: greytext,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Download',
                                  //  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: green,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    BookDetails()));
                                      },
                                      child: Text(
                                        "View Details",
                                        // textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Blue_bottom,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      color: Blue_bottom,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        );
      });
}
