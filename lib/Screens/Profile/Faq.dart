import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';

class FaqScreen extends StatefulWidget {
  FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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

        title: Text('FAQ',
            style: TextStyle(
              color: black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
