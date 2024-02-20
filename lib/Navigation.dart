import 'dart:developer';

//import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pesu/Constant/color.dart';
import 'package:pesu/Screens/Home.dart';
import 'package:pesu/Screens/Profile.dart';
import 'package:pesu/Screens/Search.dart';
import 'package:pesu/Screens/Transaction.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: SvgPicture.asset(
              'assets/images/home.svg',
              width: 10,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              width: 10,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              'assets/images/li.svg',
              width: 10,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: SvgPicture.asset(
              'assets/images/profile.svg',
              width: 10,
              color: Colors.white,
            ),
          ),
        ],
        inactiveIcons: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/images/home.svg',
                color: Colors.white,
              ),
              Text(
                'Home',
                style: TextStyle(color: white),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/images/search.svg',
                color: Colors.white,
              ),
              Text(
                'Search',
                style: TextStyle(color: white),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/images/li.svg',
                color: Colors.white,
              ),
              Text(
                'History',
                style: TextStyle(color: white),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/images/profile.svg',
                color: Colors.white,
              ),
              Text(
                'Profile',
                style: TextStyle(color: white),
              )
            ],
          ),
        ],
        color: Blue_bottom,
        height: 60,
        circleWidth: 45,
        activeIndex: tabIndex,

        onTap: (index) {
          tabIndex = index;
          pageController!.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        //shadowColor: Colors.deepPurple,
        // elevation: 10,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          Home_page(),
          Search_page(),
          Transaction(),
          Profile(),
        ],
      ),
    );
  }
}











//   final _controller = PageController();

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: PageView(
// //         controller: _controller,
// //         children: <Widget>[
// //           Home_page(),
// //           Search_page(),
// //           Transaction(),
// //           Profile(),
// //         ],
// //       ),
// //       extendBody: false,
// //       //backgroundColor: Colors.transparent,
// //       bottomNavigationBar: RollingBottomBar(
// //         controller: _controller,
// //         flat: true,
// //         color: Blue_bottom,
// //         useActiveColorByDefault: false,
// //         activeItemColor: white,
// //         items: [
// //           RollingBottomBarItem(Icons.home_outlined,
// //               label: 'Home', activeColor: white),
// //           RollingBottomBarItem(Icons.search_outlined,
// //               label: 'Search', activeColor: white),
// //           RollingBottomBarItem(Icons.assignment_outlined,
// //               label: 'History', activeColor: white),
// //           RollingBottomBarItem(Icons.account_circle_outlined,
// //               label: 'My Profile', activeColor: white),
// //         ],
// //         enableIconRotation: false,
// //         onTap: (index) {
// //           _controller.animateToPage(
// //             index,
// //             duration: const Duration(milliseconds: 400),
// //             curve: Curves.easeInCubic,
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _controller,
//         children: <Widget>[
//           Home_page(),
//           Search_page(),
//           Transaction(),
//           Profile(),
//         ],
//       ),
//       extendBody: false,
//       bottomNavigationBar: RollingBottomBar(
//         controller: _controller,
//         flat: true,
//         color: Blue_bottom,

//         useActiveColorByDefault: false,
//         itemColor: white,
//         activeItemColor: white,
//         items: [
//           RollingBottomBarItem(Icons.home_outlined,
//               label: 'Home', activeColor: white),
//           RollingBottomBarItem(Icons.search_outlined,
//               label: 'Search', activeColor: white),
//           RollingBottomBarItem(Icons.assignment_outlined,
//               label: 'History', activeColor: white),
//           RollingBottomBarItem(Icons.account_circle_outlined,
//               label: 'My Profile', activeColor: white),
//         ],
//         enableIconRotation: true,
//         onTap: (index) {
//           _controller.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 400),
//             curve: Curves.easeOut,
//           );
//         },
//       ),
//     );
//   }
// }

//   final _pageController = PageController(initialPage: 0);

//   /// Controller to handle bottom nav bar and also handles initial page
//   final _controller = NotchBottomBarController(index: 0);

//   int maxCount = 4;

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   /// widget list
//   final List<Widget> bottomBarPages = [
//     Home_page(),
//     Search_page(),
//     Transaction(),
//     Profile(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         physics: ScrollPhysics(),
//         children: List.generate(
//             bottomBarPages.length, (index) => bottomBarPages[index]),
//       ),
//       extendBody: true,
//       bottomNavigationBar: (bottomBarPages.length <= maxCount)
//           ? AnimatedNotchBottomBar(
//               /// Provide NotchBottomBarController
//               notchBottomBarController: _controller,
//               color: Blue_bottom,

//               notchColor: Blue_bottom,
//               showLabel: true,
//               itemLabelStyle: TextStyle(
//                 color: white,
//                 fontSize: 14,
//               ),

//               /// restart app if you change removeMargins
//               //removeMargins: false,
//               // showBlurBottomBar: true,
//               bottomBarWidth: 500,
//               durationInMilliSeconds: 300,
//               bottomBarItems: [
//                 BottomBarItem(
//                   inActiveItem: SvgPicture.asset(
//                     'assets/images/home.svg',
//                     color: Colors.white,
//                   ),
//                   activeItem: SvgPicture.asset(
//                     'assets/images/home.svg',
//                     color: Colors.white,
//                   ),
//                   itemLabel: 'Home',
//                 ),
//                 BottomBarItem(
//                   inActiveItem: SvgPicture.asset(
//                     'assets/images/search.svg',
//                     color: Colors.white,
//                   ),
//                   activeItem: SvgPicture.asset(
//                     'assets/images/search.svg',
//                     color: Colors.white,
//                   ),
//                   itemLabel: 'Search',
//                 ),

//                 ///svg example
//                 BottomBarItem(
//                   inActiveItem: SvgPicture.asset(
//                     'assets/images/li.svg',
//                     color: Colors.white,
//                   ),
//                   activeItem: SvgPicture.asset(
//                     'assets/images/li.svg',
//                     color: Colors.white,
//                   ),
//                   itemLabel: 'History',
//                 ),
//                 BottomBarItem(
//                   inActiveItem: SvgPicture.asset(
//                     'assets/images/profile.svg',
//                     color: Colors.white,
//                   ),
//                   activeItem: SvgPicture.asset(
//                     'assets/images/profile.svg',
//                     color: Colors.white,
//                   ),
//                   itemLabel: 'Profile',
//                 ),
//               ],
//               onTap: (index) {
//                 /// perform action on tab change and to update pages you can update pages without pages
//                 log('current selected index $index');
//                 _pageController.jumpToPage(index);
//               },
//             )
//           : null,
//     );
//   }
// }



//   var tabIndex = 0;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   void changeTab(int index) {
//     setState(() {
//       tabIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       resizeToAvoidBottomInset: false,
//       body: IndexedStack(
//         index: tabIndex,
//         children: [
//           DashBoard_Screen(),
//           History_Screen(),
//           LeaveRequest(),
//           Profile(),
//           Logout()
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         clipBehavior: Clip.antiAlias,
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 4,
//         child: BottomNavigationBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           type: BottomNavigationBarType.fixed,
//           selectedFontSize: 12,
//           currentIndex: tabIndex,
//           onTap: changeTab,
//           selectedItemColor: Blue,
//           unselectedItemColor: greytext,
//           showSelectedLabels: true,
//           showUnselectedLabels: false,
//           items: [
//             itemBar(Icons.home_outlined, 'Home'),
//             itemBar(Icons.assignment, 'History'),
//             BottomNavigationBarItem(
//               backgroundColor: Colors.transparent,
//               icon: Icon(
//                 Icons.home,
//                 color: Colors.transparent,
//               ),
//               label: '',
//             ),
//             // itemBar(Icons.maps_ugc, 'New Request',),
//             itemBar(Icons.account_circle, 'My Profile'),
//             itemBar(Icons.logout_outlined, 'Logout'),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         //mini: true,
//         backgroundColor: Blue,
//         focusColor: Colors.transparent,
//         onPressed: () => Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(
//                 builder: (BuildContext context) => LeaveRequest()),
//             (Route<dynamic> route) => false),
//         // Navigator.of(context)
//         //     .push(MaterialPageRoute(builder: (context) => Request_Form())),
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }

// itemBar(IconData icon, String label) {
//   return BottomNavigationBarItem(icon: Icon(icon), label: label);
// }

//   PersistentTabController _controller =
//       PersistentTabController(initialIndex: 0);

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarItems(),
//       confineInSafeArea: true,
//       itemAnimationProperties: const ItemAnimationProperties(
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//           duration: Duration(milliseconds: 200),
//           curve: Curves.ease,
//           animateTabTransition: true),
//       navBarStyle: NavBarStyle.style15,
//     );
//   }
// }

// List<PersistentBottomNavBarItem> _navBarItems() {
//   return [
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.home,
//         color: Blue,
//       ),
//       title: ('Home'),
//       activeColorPrimary: Colors.blue.shade800,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.home,
//         color: Blue,
//       ),
//       title: ('Home'),
//       activeColorPrimary: Colors.blue.shade800,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.list_alt,
//         color: Blue,
//       ),
//       title: ('History'),
//       activeColorPrimary: Colors.blue.shade800,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.groups,
//         color: Blue,
//       ),
//       title: ('Students'),
//       activeColorPrimary: Colors.blue.shade800,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.logout,
//         color: Blue,
//       ),
//       title: ('Logout'),
//       activeColorPrimary: Colors.blue.shade800,
//       inactiveColorPrimary: Colors.grey,
//     ),
//   ];
// }

// List<Widget> _buildScreens() {
//   return [
//     DashBoard_Screen(),
//     History_Screen(),
//     LeaveRequest(),
//     Profile(),
//     Logout()
//   ];
// }

//   @override
//   Widget build(BuildContext context) {
//     PersistentTabController controller;
//     controller = PersistentTabController(initialIndex: 0);

//     List<Widget> _buildScreens() {
//       return [
//         Home_page(),
//         Search_page(),
//         Transaction(),
//         Profile(),
//       ];
//     }

//     List<PersistentBottomNavBarItem> _navBarsItems() {
//       return [
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.home_outlined),
//           title: ("Home"),
//           activeColorPrimary: Blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.search_outlined),
//           title: ("Search"),
//           activeColorPrimary: Blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         // PersistentBottomNavBarItem(
//         //   icon: const Icon(Icons.add, color: Colors.white),
//         //   activeColorPrimary: Blue,
//         //   inactiveColorPrimary: Colors.grey,
//         // ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.assignment_outlined),
//           title: ("Transaction"),
//           activeColorPrimary: Blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.account_circle_outlined),
//           title: ("Profile"),
//           activeColorPrimary: Blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//       ];
//     }

//     return PersistentTabView(
//       context,
//       controller: controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),

//       confineInSafeArea: true,
//       backgroundColor: Colors.white, // Default is Colors.white.
//       handleAndroidBackButtonPress: true, // Default is true.
//       resizeToAvoidBottomInset:
//           true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
//       stateManagement: true, // Default is true.
//       hideNavigationBarWhenKeyboardShows:
//           true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: const ItemAnimationProperties(
//         // Navigation Bar's items animation properties.
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//         // Screen transition animation on change of selected tab.
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle: NavBarStyle
//           .neumorphic, // Choose the nav bar style with this property.
//     );
//   }
// }
