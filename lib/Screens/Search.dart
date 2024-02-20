import 'package:flutter/material.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Screens/SearchResult.dart';

class Search_page extends StatefulWidget {
  Search_page({Key? key}) : super(key: key);

  @override
  State<Search_page> createState() => _Search_pageState();
}

class _Search_pageState extends State<Search_page> {
  TextEditingController date = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? _category;
  bool _isLoading = true;
  final TextEditingController title = new TextEditingController();
  final TextEditingController Year = new TextEditingController();
  final TextEditingController call_no = new TextEditingController();
  final TextEditingController edition = new TextEditingController();
  final TextEditingController author = new TextEditingController();
  final TextEditingController subject = new TextEditingController();
  final TextEditingController publish = new TextEditingController();
  final TextEditingController location = new TextEditingController();
  final TextEditingController accesno = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // date.text = '';
    //edit();

    // timeofDay = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        // backgroundColor: Color.fromARGB(255, 240, 240, 240),
        appBar: AppBar(
          backgroundColor: white,
          elevation: 3,
          // title: Image.asset(
          //   "assets/images/peslogo.png",
          //   height: 50,
          //   width: 100,
          // ),
          // centerTitle: true,
          title: Text(
            'Search Book',
            style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
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
                        controller: title,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter title";
                          }
                          return null;
                        },
                        onSaved: (name) {
                          // _name = name!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2.5),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2)),
                          contentPadding: const EdgeInsets.only(left: 20),
                          hintText: 'Enter the title',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Year',
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
                        controller: Year,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter the year";
                          }
                          return null;
                        },
                        onSaved: (lastname) {
                          lastname = lastname.toString();
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Blue_bottom, width: 2)),
                          contentPadding: const EdgeInsets.only(left: 20),

                          hintText: 'Enter the year',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Call_No',
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
                        controller: call_no,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter call_no";
                          }

                          return null;
                        },
                        onSaved: (phone) {
                          // _phone = phone!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the Call_No',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Select Category',
                        style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 14, right: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(width: 1, color: box),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Blue_bottom),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Select Category',
                            // hintText: 'Date-Month-Year',

                            hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                            focusedErrorBorder: new OutlineInputBorder(
                              borderSide: BorderSide(color: red, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: red, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          // border: OutlineInputBorder(
                          //   borderRadius: const BorderRadius.all(
                          //     const Radius.circular(10),
                          //   ),
                          // ),
                          //               ),
                          // decoration: InputDecoration(
                          //   enabledBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: Colors.grey, width: 1), //<-- SEE HERE
                          //   ),
                          //   focusedBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: Colors.black, width: 2), //<-- SEE HERE
                          //   ),
                          //   filled: true,
                          //   // fillColor: Colors.greenAccent,
                          // ),

                          //dropdownColor: greylite,
                          value: _category,
                          onChanged: (value) {
                            setState(() {
                              _category = value;
                            });
                          },
                          items: <String>[
                            'Arch Books',
                            'Books',
                            'Business Management Library',
                            'Digital Library',
                            'Compact Disks',
                            'E-Books',
                            'Journals',
                            'Law Books',
                            'Hotel Management Library'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Edition',
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
                        controller: edition,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Edition";
                          }

                          return null;
                        },
                        onSaved: (email) {
                          // _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the Edition',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Author',
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
                        controller: author,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Author";
                          }

                          return null;
                        },
                        onSaved: (email) {
                          // _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the Author',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Subject',
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
                        controller: subject,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Subject";
                          }

                          return null;
                        },
                        onSaved: (email) {
                          // _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the Subject',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Publisher',
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
                        controller: publish,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Publisher";
                          }

                          return null;
                        },
                        onSaved: (email) {
                          // _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the Publisher',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Location',
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
                        controller: location,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Location";
                          }

                          return null;
                        },
                        onSaved: (email) {
                          // _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the Location',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'AccessNo',
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
                        controller: accesno,

                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Please enter Edition";
                          }

                          return null;
                        },
                        onSaved: (access) {
                          // _email = email!;
                        },
                        // cursorColor: white,

                        style: TextStyle(
                            color: black,
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
                          hintText: 'Enter the AccessNo',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Blue_bottom,
                            minimumSize: const Size.fromHeight(44),
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                            Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) => Result()));
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
                            'Search',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
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
