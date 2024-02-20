import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Screens/BookDetails.dart';

class Transaction extends StatefulWidget {
  Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        appBar: AppBar(
          backgroundColor: white,
          elevation: 3,
          // titleSpacing: 0,
          title: Text('History',
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
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(),
                        itemCount: 5,
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
                                color: white,
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Image.asset(
                                              'assets/images/img4.png',
                                              width: 80,
                                              height: 100,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Java Programming",
                                                  // textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: greytext,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Author : Kogent Learning Solutions Inc.",
                                                  // textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: black,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                BookDetails()));
                                                  },
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Text(
                                                      "View Details >",
                                                      // textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: orange,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      // Divider(
                                      //   thickness: 2,
                                      // )
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  ],
                ),
              ),
            )));
  }
}
