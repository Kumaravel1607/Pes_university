import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Screens/SearchResult.dart';
import 'package:readmore/readmore.dart';

class BookDetails extends StatefulWidget {
  BookDetails({Key? key}) : super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: white,
        leading: IconButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Result()));
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        titleSpacing: 0,
        title: Text('Book Details',
            style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        // title: Image.asset(
        //   "assets/images/peslogo.png",
        //   height: 50,
        //   width: 100,
        // ),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Java 6 programming : threading networking, animation, sound, XML, Java beans 2.1 JDBC 4.0 RMI servlets dynamic Java scripting groovy JMX 1.4 generics Java web services and internationalization black book",
                        //   // textAlign: TextAlign.start,
                        //   textAlign: TextAlign.justify,
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: black,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                'assets/images/img4.png',
                                width: 130,
                                height: 155,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Java 6 programming ",
                                      // textAlign: TextAlign.start,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: black,
                                          // letterSpacing: 1,
                                          //  fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Kogent Learning Solutions Inc",
                                      // textAlign: TextAlign.start,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          overflow: TextOverflow.visible,
                                          fontSize: 12,
                                          letterSpacing: 1,
                                          color: greytext,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Icon(
                                    //       Icons.schedule_outlined,
                                    //       color: greylite,
                                    //     ),
                                    //     Text(
                                    //       "Return in 6 days",
                                    //       // textAlign: TextAlign.start,
                                    //       textAlign: TextAlign.justify,
                                    //       style: TextStyle(
                                    //           overflow: TextOverflow.visible,
                                    //           fontSize: 13,
                                    //           letterSpacing: 1,
                                    //           color: greylite,
                                    //           fontWeight: FontWeight.w600),
                                    //     ),
                                    //   ],
                                    // ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: greytext, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        'Available',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            overflow: TextOverflow.visible,
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            color: green,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(8),
                //   child: Container(
                //     height: 50,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               "Pages ",
                //               // textAlign: TextAlign.start,
                //               style: TextStyle(
                //                   fontSize: 16,
                //                   color: black,
                //                   fontWeight: FontWeight.w700),
                //             ),
                //             Text(
                //               "XL, 1583",
                //               // textAlign: TextAlign.start,
                //               style: TextStyle(
                //                   fontSize: 14,
                //                   color: greytext,
                //                   fontWeight: FontWeight.w500),
                //             ),
                //           ],
                //         ),
                //         // Column(
                //         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         //   children: [
                //         //     Text(
                //         //       "Price",
                //         //       // textAlign: TextAlign.start,
                //         //       style: TextStyle(
                //         //           fontSize: 16,
                //         //           color: black,
                //         //           fontWeight: FontWeight.w700),
                //         //     ),
                //         //     Text(
                //         //       "599",
                //         //       // textAlign: TextAlign.start,
                //         //       style: TextStyle(
                //         //           fontSize: 14,
                //         //           color: greytext,
                //         //           fontWeight: FontWeight.w500),
                //         //     ),
                //         //   ],
                //         // ),
                //         // Column(
                //         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         //   children: [
                //         //     Text(
                //         //       "Publisher",
                //         //       // textAlign: TextAlign.start,
                //         //       style: TextStyle(
                //         //           fontSize: 16,
                //         //           color: black,
                //         //           fontWeight: FontWeight.w700),
                //         //     ),
                //         //     Text(
                //         //       "Dreamtech Press",
                //         //       // textAlign: TextAlign.start,
                //         //       style: TextStyle(
                //         //           fontSize: 14,
                //         //           color: greytext,
                //         //           fontWeight: FontWeight.w500),
                //         //     ),
                //         //   ],
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Authors:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Year,Ed:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ID:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Call_No:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "SubTitle:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Publisher:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ISBN:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Pages:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Department:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Location:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Subject:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Price:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Status:",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kogent Learning Solutions Inc",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "2011",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "PU2796(PESU Books)",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "001.6424JAV KOG;1R",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " ",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dreamtech Press",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "9788177227369",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "XL, 1583",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Central Library",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Central Library",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "599",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Reference",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: greytext,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8),
                //   child: Text(
                //     "Description",
                //     // textAlign: TextAlign.start,
                //     style: TextStyle(
                //         fontSize: 16,
                //         color: black,
                //         fontWeight: FontWeight.w600),
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8),
                //   child: ReadMoreText(
                //     " threading networking, animation, sound, XML, Java beans 2.1 JDBC 4.0 RMI servlets dynamic Java scripting groovy JMX 1.4 generics Java web services and internationalization black book .",
                //     trimLines: 2,
                //     preDataText: "Java 6 programming :",
                //     preDataTextStyle:
                //         TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                //     style: TextStyle(color: Colors.black),
                //     colorClickableText: orange,
                //     trimMode: TrimMode.Line,
                //     trimCollapsedText: 'See more',
                //     trimExpandedText: '..See less',
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Blue_bottom,
                    minimumSize: const Size.fromHeight(44),
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                    // Navigator.of(context, rootNavigator: true).push(
                    //     MaterialPageRoute(
                    //         builder: (context) => Result()));
                    // Navigator.of(context, rootNavigator: true)
                    //     .pushAndRemoveUntil(
                    //         MaterialPageRoute(
                    //             builder: (BuildContext context) =>
                    //                 Result()),
                    //         (Route<dynamic> route) => false);

                    // if (formkey.currentState!.validate()) {
                    //   // update_user();
                    //   //     // fullname.text, username.text,
                    //   //     //   mobile.text, _gender, date.text, about.text
                    //   //     );
                    //   // Navigator.of(context).push(MaterialPageRoute(
                    //   //     builder: (context) => Profile()));
                    // } else {}
                  },
                  child: const Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
