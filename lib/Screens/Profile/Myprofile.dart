import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Navigation.dart';
import 'package:pesu/Screens/Profile.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _isLoading = true;
  final TextEditingController firstname = new TextEditingController();
  final TextEditingController lastname = new TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController about = new TextEditingController();
  void _close() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 3,
          backgroundColor: white,
          leading: GestureDetector(
            onTap: () {
              _close();
            },
            child: Icon(Icons.chevron_left, size: 30, color: black),
          ),

          title: Text('My Profile',
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
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Name',
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: firstname,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter firstname";
                          }
                          return null;
                        },
                        onSaved: (name) {
                          //  _name = name!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          // fillColor: light,
                          // filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: grey),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Blue_bottom, width: 2.5),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2)),
                          contentPadding: const EdgeInsets.only(left: 20),
                          hintText: 'Enter First name',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Last Name',
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: lastname,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Last name";
                          }
                          return null;
                        },
                        onSaved: (lastname) {
                          lastname = lastname.toString();
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          // fillColor: light,
                          // filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: grey),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Blue_bottom, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2)),
                          contentPadding: const EdgeInsets.only(left: 20),

                          hintText: 'Enter Lastname',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Phone',
                        style: TextStyle(
                          color: black,
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: mobile,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter phone number";
                          }
                          if (value.length < 9) {
                            return "Please enter a valid phone number";
                          }
                          return null;
                        },
                        onSaved: (phone) {
                          //   _phone = phone!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          // fillColor: light,
                          // filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: grey),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Blue_bottom, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2)),
                          contentPadding: const EdgeInsets.only(left: 20),
                          hintText: 'Enter Phone Number',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: email,
                        readOnly: true,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter email";
                          }
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }
                          return null;
                        },
                        onSaved: (email) {
                          //  _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          // fillColor: light,
                          // filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: grey),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Blue_bottom, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2)),
                          contentPadding: const EdgeInsets.only(left: 20),
                          hintText: 'Enter Email',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                          // suffixIcon: Icon(
                          //   Icons.email_outlined,
                          //   color: grey,
                          // )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Text(
                      //   'Gender',
                      //   style: TextStyle(
                      //     color: black,
                      //     fontFamily: 'Rubik',
                      //     fontSize: 14,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // Container(
                      //   height: 45,
                      //   child: DropdownButtonFormField(
                      //     style: TextStyle(
                      //         color: black,
                      //         fontSize: 14,
                      //         fontFamily: 'Rubik',
                      //         fontWeight: FontWeight.w500),
                      //     // value: dropdownvalue,
                      //     value: _gender,
                      //     isExpanded: true,
                      //     onChanged: (newValue) {
                      //       setState(() {
                      //         _gender = newValue as String;
                      //       });
                      //     },
                      //     items: ListItems.map((List) {
                      //       return DropdownMenuItem(
                      //           child: Text(List), value: List);
                      //     }).toList(),
                      //     decoration: InputDecoration(
                      //       contentPadding: const EdgeInsets.only(
                      //           left: 20, top: 14, right: 20),
                      //       enabledBorder: OutlineInputBorder(
                      //           borderSide:
                      //               const BorderSide(width: 2, color: grey),
                      //           borderRadius: BorderRadius.circular(10)),
                      //       focusedBorder: OutlineInputBorder(
                      //           borderSide:
                      //               const BorderSide(width: 2, color: Blue_bottom),
                      //           borderRadius: BorderRadius.circular(10)),
                      //       // border: OutlineInputBorder(
                      //       //   borderRadius: const BorderRadius.all(
                      //       //     const Radius.circular(10),
                      //       // ),
                      //       // ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   'Date of Birth',
                      //   style: TextStyle(
                      //     color: black,
                      //     fontFamily: 'Rubik',
                      //     fontSize: 14,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   readOnly: true,
                      //   // keyboardType: TextInputType.text,
                      //   validator: (String? value) {
                      //     if (value!.isEmpty) {
                      //       return "Please enter Date of Birth";
                      //     }
                      //     return null;
                      //   },
                      //   onSaved: (time) {
                      //     time = time!;
                      //   },
                      //   onTap: () async {
                      //     DateTime? datePicked = await showDatePicker(
                      //       context: context,
                      //       initialDate: DateTime.now(),
                      //       firstDate: DateTime(1950),
                      //       lastDate: DateTime(2100),
                      //     );

                      //     if (datePicked != null) {
                      //       String formattedDate =
                      //           DateFormat("dd-MM-yyyy").format(datePicked);
                      //       setState(() {
                      //         date.text = formattedDate.toString();
                      //       });
                      //     }
                      //   },
                      //   style: TextStyle(
                      //       color: black,
                      //       fontFamily: 'Rubik',
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w600),
                      //   controller: date,
                      //   decoration: InputDecoration(
                      //       // fillColor: light,
                      //       // filled: true,
                      //       enabledBorder: OutlineInputBorder(
                      //           borderSide:
                      //               const BorderSide(width: 1, color: grey),
                      //           borderRadius: BorderRadius.circular(10)),
                      //       focusedBorder: OutlineInputBorder(
                      //           borderSide:
                      //               const BorderSide(color: Blue_bottom, width: 2),
                      //           borderRadius: BorderRadius.circular(10)),
                      //       contentPadding: const EdgeInsets.only(left: 20),
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide(color: Blue_bottom, width: 2)),
                      //       // hintText: 'Date-Month-Year',
                      //       // hintStyle: const TextStyle(
                      //       //     fontSize: 14,
                      //       //     fontFamily: 'NunitoSans',
                      //       //     fontWeight: FontWeight.w400,
                      //       //     fontStyle: FontStyle.normal),
                      //       suffixIcon: IconButton(
                      //           onPressed: () async {
                      //             DateTime? datePicked = await showDatePicker(
                      //               context: context,
                      //               initialDate: DateTime.now(),
                      //               firstDate: DateTime(1950),
                      //               lastDate: DateTime(2100),
                      //             );

                      //             if (datePicked != null) {
                      //               String formattedDate =
                      //                   DateFormat("dd-MM-yyyy")
                      //                       .format(datePicked);
                      //               setState(() {
                      //                 date.text = formattedDate.toString();
                      //               });
                      //             }
                      //             // print(
                      //             //     'Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                      //           },
                      //           icon: Icon(Icons.calendar_today,
                      //               color: greylite))),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   'Address',
                      //   style: TextStyle(
                      //     color: black,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   controller: about,

                      //   keyboardType: TextInputType.text,
                      //   // validator: (value) =>
                      //   //     value == null ? 'Please enter details' : null,
                      //   validator: (String? value) {
                      //     if (value!.isEmpty) {
                      //       return "Please enter address details";
                      //     }
                      //     return null;
                      //   },
                      //   onSaved: (about) {
                      //     about = about;
                      //   },
                      //   // cursorColor: white,

                      //   style: TextStyle(
                      //       color: black,
                      //       fontFamily: 'Rubik',
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w600),
                      //   decoration: InputDecoration(
                      //     // fillColor: light,
                      //     // filled: true,
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide:
                      //             const BorderSide(width: 1, color: grey),
                      //         borderRadius: BorderRadius.circular(10)),
                      //     focusedBorder: OutlineInputBorder(
                      //         borderSide:
                      //             const BorderSide(color: Blue_bottom, width: 2),
                      //         borderRadius: BorderRadius.circular(10)),
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10),
                      //         borderSide: BorderSide(color: Blue_bottom, width: 2)),
                      //     contentPadding: const EdgeInsets.only(left: 20),
                      //     hintText: 'Please enter the address',
                      //     hintStyle: const TextStyle(
                      //         fontSize: 14,
                      //         fontFamily: 'NunitoSans',
                      //         fontWeight: FontWeight.w400,
                      //         fontStyle: FontStyle.normal),
                      //   ),
                      // ),
                      // // SizedBox(
                      // //   height: 5,
                      // // ),
                      // // Text(
                      // //   // 'Maximum 30 charatcters',
                      // //   style: TextStyle(
                      // //       fontFamily: 'Rubik',
                      // //       fontWeight: FontWeight.w400,
                      // //       fontSize: 12,
                      // //       color: lite),
                      // // ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Blue_bottom,
                            minimumSize: const Size.fromHeight(44),
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                            // Navigator.of(context, rootNavigator: false).push(
                            //     MaterialPageRoute(
                            //         builder: (context) => Profile()));
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Profile()));
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
                            'Save',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'IBMPlexSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
