// import 'dart:html';

import 'package:flutter/material.dart';
import 'common.dart';
import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
  final CameraDescription camera;

  const Camera({
    Key key,
    this.camera,
  }) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            margin: EdgeInsets.only(top: 0),
            child: Column(
              children: [
                FutureBuilder<void>(
                  future: _initializeControllerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the Future is complete, display the preview.
                      // return CameraPreview(_controller);

                      return Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          alignment: FractionalOffset.center,
                          children: <Widget>[
                            new Positioned.fill(
                              child: new AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: new CameraPreview(_controller)),
                            ),
                            new Positioned(
                              top: 120,
                              child: new Opacity(
                                opacity: 1,
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: Color(0xff47474D),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xff333333),
                                            offset: Offset(0, 1),
                                            // spreadRadius: 2,
                                            blurRadius: 10)
                                      ],
                                      borderRadius: BorderRadius.circular(30)),
                                  // height: 55,
                                  width: 280,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xffdddddd),
                                                offset: Offset(0, 2),
                                                blurRadius: 4,
                                              )
                                            ]),
                                        child: Icon(
                                          Icons.close_outlined,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Elementum Chair: 88.47%',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            new Positioned(
                                top: 40,
                                child: Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            child: Image.asset(
                                              'lib/assets/camera.png',
                                              width: 25,
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Point your camera at a furniture',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Container()
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.white,
                                                spreadRadius: 3,
                                                blurRadius: 10)
                                          ]),
                                    )
                                  ],
                                ))),
                            new Positioned(
                                bottom: 150,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 20, right: 20, bottom: 20),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xff333333),
                                            offset: Offset(0, 1),
                                            blurRadius: 10)
                                      ],
                                      color: Color(0xff47474D),
                                      borderRadius: BorderRadius.circular(40)),
                                  width: 350,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Image.asset(
                                                'lib/assets/chair.png',
                                                width: 60,
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 10),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      'Elementum Chair',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 30),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child: Icon(
                                                                    Icons.star,
                                                                    color: Color(
                                                                        0xffE0BC1D),
                                                                    size: 15,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  child: Text(
                                                                    '4.5',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            )),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            2),
                                                                child: Text(
                                                                  '\$',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xffE0BC1D),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  '256.00',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  offset: Offset(0, 3),
                                                  blurRadius: 10)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                        child: Icon(Icons.arrow_right),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      );
                    } else {
                      // Otherwise, display a loading indicator.
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
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
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag_rounded),
        elevation: 2.0,
      ),
    );
  }
}
