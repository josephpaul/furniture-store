// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:recognize/camera.dart';
import 'common.dart';
import 'package:camera/camera.dart';

class Home extends StatefulWidget {
  // final CameraDescription camera;

  // const Home({
  //   Key key,
  //   this.camera,
  // }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Top Rated",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'lib/assets/filter.png',
                          width: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  child: CategorySnippet(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 45, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "147 product",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Most popular",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: (2 / 3),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet(),
                      ProductSnippet()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        // onTabSelected: _onTapped,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: ''),
          FABBottomAppBarItem(iconData: Icons.camera_rounded, text: ''),
          FABBottomAppBarItem(iconData: Icons.settings, text: ''),
          FABBottomAppBarItem(iconData: Icons.account_circle, text: ''),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/camera');
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag_rounded),
        elevation: 2.0,
      ),
    );
  }
}
