import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Login.dart';
import 'package:pesu/Screens/Profile/AboutCollege.dart';
import 'package:pesu/Screens/Profile/Faq.dart';
import 'package:pesu/Screens/Profile/Myprofile.dart';
import 'package:pesu/Screens/Profile/Terms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Cancel",
        style: TextStyle(
            color: Blue_bottom, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        // Navigator.pop(context);
        //Navigator.of(context).pop();
        // Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
        //   MaterialPageRoute(
        //     builder: (BuildContext context) {
        //       return DashBoard_Screen();
        //     },
        //   ),
        //   (_) => false,
        // );
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "Logout",
        style: TextStyle(
            color: Blue_bottom, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      onPressed: () async {
        // Obtain shared preferences.
        final session = await SharedPreferences.getInstance();
        // Remove data for the 'counter' key.
        await session.remove('email');
        await session.remove('user_id');

        Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Login();
            },
          ),
          (_) => false,
        );
      },
      // Obtain shared preferences.
      // final session = await SharedPreferences.getInstance();
      // // Remove data for the 'counter' key.
      // await session.remove('email');
      // await session.remove('student_id');

      //   Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
      //     MaterialPageRoute(
      //       builder: (BuildContext context) {
      //         return Login();
      //       },
      //     ),
      //     (_) => false,
      //   );
      // },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Logout",
        style: TextStyle(
            fontFamily: 'Poppins',
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.w700),
      ),
      content: Text(
        "Do you Really want to logout?",
        style: TextStyle(
            fontFamily: 'Poppins',
            color: black,
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  String _firstname = "";
  String _lastname = '';
  String _profile = '';
  String _email = '';

  // profile_page() async {
  //   SharedPreferences session = await SharedPreferences.getInstance();

  //   var user_id = session.getInt('user_id');

  //   // _username = user_name.toString();
  //   // _section = section.toString();

  //   var url = myprofile;
  //   var data = {'user_id': user_id.toString()};

  //   var body = json.encode(data);
  //   var urlparse = Uri.parse(url);

  //   http.Response response = await http.post(
  //     urlparse,
  //     body: data,
  //   );
  //   var response_data = json.decode(response.body.toString());
  //   print(response_data);
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       _firstname = (response_data['data']['first_name'].toString());
  //       _lastname = (response_data['data']['last_name'].toString());
  //       _profile = (response_data['data']['profile_pic'].toString());

  //       _email = (response_data['data']['email'].toString());
  //     });
  //     print('-----1----');
  //     print(_firstname);
  //     print(_lastname);

  //     // print('Sucessfull');
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(response_data['message'].toString()),
  //       backgroundColor: Blue.withOpacity(0.6),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: white,
        title: Text('My Profile',
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
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // Card(
                //   elevation: 2,
                //   color: greylite.withOpacity(0.5),
                //   child: Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         CircleAvatar(
                //           radius: 40,
                //           backgroundImage: AssetImage('assets/images/man1.png'),
                //         ),
                //         Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               // _firstname + _lastname,
                //               'KumsVijay',
                //               style: TextStyle(
                //                   fontSize: 18,
                //                   fontWeight: FontWeight.w600,
                //                   color: black),
                //             ),
                //             SizedBox(
                //               height: 5,
                //             ),
                //             // Text(
                //             //   '9976850646',
                //             //   style: TextStyle(
                //             //       fontSize: 16,
                //             //       fontWeight: FontWeight.w600,
                //             //       color: dash),
                //             // ),
                //             SizedBox(
                //               height: 5,
                //             ),
                //             Text(
                //               //_email,
                //               'kumsjo29@gmail.com',
                //               style: TextStyle(
                //                   fontSize: 16,
                //                   fontWeight: FontWeight.w500,
                //                   color: dash),
                //             ),
                //             SizedBox(
                //               height: 5,
                //             )
                //           ],
                //         )
                //       ],
                //     ),
                //   ),
                // ),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/man1.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      // _firstname + _lastname,
                      'Guest',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text(
                    //   '9976850646',
                    //   style: TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.w600,
                    //       color: dash),
                    // ),

                    // Text(
                    //   //_email,
                    //   'kumsjo29@gmail.com',
                    //   style: TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.w500,
                    //       color: dash),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10, right: 10),
                    //   child: Divider(
                    //     thickness: 1,
                    //     // height: 10,
                    //     indent: 0,
                    //   ),
                    // )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _card('use', 'My Profile', Icons.chevron_right, MyProfile()),
                SizedBox(
                  height: 5,
                ),
                _card('about', 'About College', Icons.chevron_right, About()),
                SizedBox(
                  height: 5,
                ),
                // _card('Change Password', Icons.chevron_right, C),
                SizedBox(
                  height: 5,
                ),
                _card('question', 'FAQ', Icons.chevron_right, FaqScreen()),
                SizedBox(
                  height: 5,
                ),
                _card('terms', 'Terms and Conditions', Icons.chevron_right,
                    Terms()),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Column(
                    children: [
                      ListTile(
                          leading: Image.asset(
                            'assets/images/off.png',
                            width: 25,
                            height: 30,
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 30,
                            color: black,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                          height: 1,
                          indent: 0,
                        ),
                      )
                    ],
                  ),
                ),

                // _card('LOGOUT', Icons.chevron_right, logOut()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _card(image, String text, icon, go_screen) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => go_screen));
      },
      child: Column(
        children: [
          ListTile(
              leading: Image.asset(
                'assets/images/$image.png',
                width: 25,
                height: 30,
              ),
              title: Text(
                text,
                style: TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                icon,
                size: 30,
                color: black,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 2,
              height: 1,
              indent: 0,
            ),
          )
        ],
      ),
    );
  }

  // logoutBack() {
  //   showDialog(
  //       context: context,
  //       builder: (_) {
  //         return AlertDialog(
  //           title: Text('Wanna Exit?'),
  //           actions: [
  //             TextButton(
  //               onPressed: () => Navigator.pop(context, false), // passing false
  //               child: Text('No'),
  //             ),
  //             TextButton(
  //               onPressed: () => Navigator.pop(context, true), // passing true
  //               child: Text('Yes'),
  //             ),
  //           ],
  //         );
  //       }).then((exit) {
  //     if (exit == null) return;

  //     if (exit) {
  //       // user pressed Yes button
  //     } else {
  //       // user pressed No button
  //     }
  //   });
  // }
  // Future logout() {
  //   return showModalBottomSheet(
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(20), topRight: Radius.circular(20))),
  //       context: context,
  //       isScrollControlled: true,
  //       builder: (BuildContext context) {
  //         return Padding(
  //           padding: EdgeInsets.only(
  //               bottom: MediaQuery.of(context).viewInsets.bottom),
  //           child: Container(
  //             height: 180,
  //             child: Padding(
  //               padding: const EdgeInsets.only(
  //                 left: 16,
  //               ),
  //               child: Column(
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(top: 16),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           'Log out',
  //                           style: TextStyle(
  //                             color: black,
  //                             fontFamily: 'IBMPlexSans',
  //                             fontWeight: FontWeight.w500,
  //                             fontSize: 16,
  //                           ),
  //                         ),
  //                         IconButton(
  //                             onPressed: () {
  //                               Navigator.pop(context);
  //                             },
  //                             icon: Icon(Icons.close))
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: 5,
  //                   ),
  //                   Align(
  //                     alignment: Alignment.topLeft,
  //                     child: Text(
  //                       'Are you sure you want to logout?',
  //                       style: TextStyle(
  //                           fontFamily: 'NunitoSans',
  //                           fontSize: 14,
  //                           fontWeight: FontWeight.w400,
  //                           color: tab),
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: 25,
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.only(right: 16),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         SizedBox(
  //                           width: 160,
  //                           child: ElevatedButton(
  //                             style: ElevatedButton.styleFrom(
  //                               shape: RoundedRectangleBorder(
  //                                   side: const BorderSide(
  //                                     width: 2,
  //                                     color: red,
  //                                   ),
  //                                   borderRadius: BorderRadius.circular(22)),
  //                               backgroundColor: white,
  //                               minimumSize: const Size.fromHeight(44),
  //                             ),
  //                             onPressed: () async {
  //                               // Obtain shared preferences.
  //                               // final prefs =
  //                               //     await SharedPreferences.getInstance();
  //                               // // Remove data for the 'counter' key.
  //                               // await prefs.remove('email');
  //                               // await prefs.remove('user_id');
  //                               Navigator.of(context).push(MaterialPageRoute(
  //                                   builder: (context) => Login()));
  //                             },
  //                             child: const Text(
  //                               'Yes Logout',
  //                               style: TextStyle(
  //                                 color: red,
  //                                 fontSize: 16,
  //                                 fontFamily: 'IBMPlexSans',
  //                                 fontWeight: FontWeight.w500,
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           width: 160,
  //                           child: ElevatedButton(
  //                             style: ElevatedButton.styleFrom(
  //                               shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.circular(22)),
  //                               backgroundColor: red,
  //                               minimumSize: const Size.fromHeight(44),
  //                             ),
  //                             onPressed: () {
  //                               Navigator.of(context).push(MaterialPageRoute(
  //                                   builder: (context) => Profile()));
  //                             },
  //                             child: const Text(
  //                               'Cancel',
  //                               style: TextStyle(
  //                                 fontSize: 16,
  //                                 fontFamily: 'IBMPlexSans',
  //                                 fontWeight: FontWeight.w500,
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       });
  // }

  logOut() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('We will be redirected to login page.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the Dialog
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(); // Navigate to login
              },
            ),
          ],
        );
      },
    );
  }

  // showAlertDialog(BuildContext context) {
  //   // set up the buttons
  //   Widget cancelButton = TextButton(
  //     child: Text(
  //       "Cancel",
  //       style: TextStyle(
  //           fontFamily: 'Poppins',
  //           color: Blue,
  //           fontSize: 16,
  //           fontWeight: FontWeight.w600),
  //     ),
  //     onPressed: () {
  //       Navigator.of(context, rootNavigator: true).pop();
  //       // Navigator.pop(context);
  //       //Navigator.of(context).pop();
  //       // Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
  //       //   MaterialPageRoute(
  //       //     builder: (BuildContext context) {
  //       //       return DashBoard_Screen();
  //       //     },
  //       //   ),
  //       //   (_) => false,
  //       // );
  //     },
  //   );
  //   Widget continueButton = TextButton(
  //     child: Text(
  //       "Logout",
  //       style: TextStyle(
  //           fontFamily: 'Poppins',
  //           color: Blue,
  //           fontSize: 16,
  //           fontWeight: FontWeight.w600),
  //     ),
  //     onPressed: () async {
  //       // // Obtain shared preferences.
  //       // final session = await SharedPreferences.getInstance();
  //       // // Remove data for the 'counter' key.
  //       // await session.remove('email');
  //       // await session.remove('student_id');

  //       // Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
  //       //   MaterialPageRoute(
  //       //     builder: (BuildContext context) {
  //       //       return Student_login();
  //       //     },
  //       // ),
  //       // (_) => false,
  //       // );
  //     },
  //   );
  //   // set up the AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     title: Text(
  //       "Logout",
  //       style: TextStyle(
  //           fontFamily: 'Poppins',
  //           color: black,
  //           fontSize: 20,
  //           fontWeight: FontWeight.w700),
  //     ),
  //     content: Text(
  //       "Do you Really want to logout?",
  //       style: TextStyle(
  //           fontFamily: 'Poppins',
  //           color: black,
  //           fontSize: 16,
  //           fontWeight: FontWeight.w500),
  //     ),
  //     actions: [
  //       cancelButton,
  //       continueButton,
  //     ],
  //   );
  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

}
