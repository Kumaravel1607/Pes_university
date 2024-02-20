import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Screens/BookDetails.dart';
import 'package:pesu/Screens/Search.dart';

class Result extends StatefulWidget {
  Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
              //     .push(MaterialPageRoute(builder: (context) => Search_page()));
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        titleSpacing: 0,
        title: Text('Book Results',
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
        child: Column(
          children: [List_view()],
        ),
      ),
    );
  }

  Widget List_view() => ListView.builder(
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
            elevation: 1.0,
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
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 10,
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
                              height: 10,
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
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Download',
                                    //  textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: green,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (context) =>
                                                BookDetails()));
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "View Details",
                                        // textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Blue_bottom,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(
                                        Icons.chevron_right_outlined,
                                        color: Blue_bottom,
                                      )
                                    ],
                                  ),
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
