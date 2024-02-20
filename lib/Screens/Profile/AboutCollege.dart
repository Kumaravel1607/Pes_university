import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:readmore/readmore.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: black,
              size: 30,
            )),

        title: Text('About College',
            style: TextStyle(
              color: black,
              fontSize: 18,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vision",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16, color: black, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ReadMoreText(
                " To actively engage with and support the innovative learning and research of PES students, faculty, and staff.",
                preDataTextStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                style: TextStyle(
                  color: Colors.black,
                ),
                colorClickableText: orange,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'See more',
                trimExpandedText: '..See less',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Mission",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16, color: black, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ReadMoreText(
                " To provide an innovative learning environment with technology, education and culture and to create a distinctive library experience through services and resources for students and faculty in their pursuit of academic excellence.",
                preDataTextStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                style: TextStyle(color: Colors.black),
                colorClickableText: orange,
                trimMode: TrimMode.Line,
                textAlign: TextAlign.justify,
                trimLines: 4,
                trimCollapsedText: 'See more',
                trimExpandedText: '..See less',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "About Library",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16, color: black, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ReadMoreText(
                " The PES University Library strives to support and enhance the learning, teaching, research, and service activities by providing organized access to quality information. The information is facilitated in different media like books required for courses, periodicals, comprehensive databases that are accessible through internet.",
                preDataTextStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                style: TextStyle(color: Colors.black),
                colorClickableText: orange,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimLines: 4,
                trimCollapsedText: 'See more',
                trimExpandedText: '..See less',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Central Library",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16, color: black, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ReadMoreText(
                " Central Library, PES University was established in 1988 with a modest number of books and other documents. Since its inception, the library has steadily developed its collection and presently the library has over 1 lakh documents comprising an impressive and diverse range of information sources like books, journals, conference proceedings, project reports, institutional repositories, previous years examination question papers, electronic resources like E-books, E-journals, CDROMS, Standards, etc. \n Library strives to offer exceptional service by acquiring, organizing, and providing access to information resources specializing in the fields of science, engineering and technology, and management and employs state-of-the-art technologies to support learning, teaching, research, and innovation The library is a part of the university that touches everyone-every student, faculty member, researcher, and in every academic field . \nCentral Library functions as a centralized agency for procurement of books, journals and other documents required by all departments of the University and learning community. Collection Development is done based on the recommendations of the Department Heads and feedbacks received from students and faculty members. Continuing efforts are directed towards building the collection to ensure that it remained relevant and up-to-date in support of teaching, learning and research needs. Emphasis is given for diversifying collection from being primarily print oriented to include video, multimedia, and other digital materials.",
                preDataTextStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                style: TextStyle(color: Colors.black),
                colorClickableText: orange,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'See more',
                trimLines: 10,
                trimExpandedText: '..See less',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
