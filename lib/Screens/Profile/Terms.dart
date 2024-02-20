import 'package:flutter/material.dart';
//import 'package:flutter_html/flutter_html.dart';
import 'package:pesu/Constant/color.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Terms extends StatefulWidget {
  Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool isloading = true;
  String pagecontent = "";

  @override
  void initState() {
    super.initState();
    getpage();
  }

  Future<String> getpage() async {
    var url = "https://varmalaa.com/api/Demo/terms";
    print(url);
    var response = await http.get(Uri.parse(url));
    var page = (json.decode(response.body));

    setState(() {
      pagecontent = page['page_content'];
    });
    isloading = false;
    return "Success";
  }

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
            icon: Icon(Icons.chevron_left, size: 30, color: black)),
        // title: Image.asset(
        //   "assets/images/peslogo.png",
        //   height: 50,
        //   width: 100,
        // ),
        // centerTitle: true,

        title: Text('Terms And Condition',
            style: TextStyle(
              color: black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
      ),
      // body: isloading == true
      //     ? Center(
      //         child: CircularProgressIndicator(
      //           color: orange,
      //         ),
      //       )
      //     : Padding(
      //         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      //         child: SingleChildScrollView(
      //             child: Html(
      //           data: pagecontent,
      //         ))),
    );
  }
}
