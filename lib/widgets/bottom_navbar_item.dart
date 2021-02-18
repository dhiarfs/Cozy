import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/pages/profile_page.dart';
import 'package:bwa_cozy/pages/search_page.dart';
import 'package:bwa_cozy/pages/splash_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    HomePage(),
    SplashPage(),
    SearchPage(),
    ProfilePage()
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _onTabItem(index);
        },
        margin: EdgeInsets.symmetric(horizontal:32, vertical: 24),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: dongkerColor,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: dongkerColor,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: dongkerColor,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: dongkerColor,
          ),
        ],
      ),
    );
  }
}

// import 'package:bwa_cozy/theme.dart';
// import 'package:flutter/material.dart';

// class BottomNavbarItem extends StatelessWidget {
//   final String imageUrl;
//   final bool isActive;

//   BottomNavbarItem({this.imageUrl, this.isActive});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Spacer(),
//         Image.asset(
//           imageUrl,
//           width: 26,
//         ),
//         Spacer(),
//         Container(
//           width: 30,
//           height: 2,
//           decoration: BoxDecoration(
//             color: purpleColor,
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(50),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
