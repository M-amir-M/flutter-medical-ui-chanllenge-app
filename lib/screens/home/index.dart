import 'package:flutter/material.dart';
import 'package:shemiranweb/const.dart';
import 'package:shemiranweb/layouts/index.dart';
import 'package:shemiranweb/widget/card.dart';
import 'package:shemiranweb/widget/menu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool drawerOpen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    drawerOpen = false;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Layout(
          isOpen: drawerOpen,
          child: Scaffold(
              backgroundColor: Colors.white,
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: 0,
                type: BottomNavigationBarType
                    .fixed, // this will be set when a new tab is tapped
                items: [
                  BottomNavigationBarItem(
                    icon: new Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    title: new Text(
                      'تنظیمات',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: new Icon(
                      Icons.image,
                      color: Colors.grey,
                    ),
                    title: new Text(
                      'گالری',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'آرمان الهیه',
                        style: TextStyle(color: Colors.grey),
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'درباره ما',
                        style: TextStyle(color: Colors.grey),
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'تماس باما',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
              floatingActionButton: Container(
                padding: EdgeInsets.only(top: 30),
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: new ClipPath(
                        clipper: new CustomHalfCircleClipper(),
                        child: new Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: new BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey
                              //   )
                              // ],
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(150.0)),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 45,
                          width: 45,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              GlobalTheme.secondColor,
                              GlobalTheme.firstColor,
                              GlobalTheme.firstColor,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                gradient: new RadialGradient(
                                  center: Alignment.center,
                                  radius: 1.3,
                                  colors: [
                                    GlobalTheme.secondColor,
                                    Colors.transparent,
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25))),
                          ),
                          Column(
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(
                                              top: 40, left: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  GestureDetector(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(top: 0),
                                                              child: Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .white,
                                                                size: 18,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(top: 0),
                                                              child: Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .white,
                                                                size: 18,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'سطح برنزی',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  GestureDetector(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 0),
                                                          child: Icon(
                                                            Icons
                                                                .brightness_low,
                                                            color: Colors
                                                                .orangeAccent,
                                                            size: 25,
                                                          ),
                                                        ),
                                                        Text(
                                                          '100',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 50),
                                          child: Center(
                                            child: Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: <Widget>[
                                                Container(
                                                  width: 180,
                                                  height: 180,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white
                                                          .withOpacity(0.08),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              150)),
                                                ),
                                                Container(
                                                  width: 140,
                                                  height: 140,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white
                                                          .withOpacity(0.1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              150)),
                                                ),
                                                Stack(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .bottomCenter,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 100,
                                                      height: 100,
                                                      child: Image.asset(
                                                          'assets/images/avatar.png'),
                                                    ),
                                                    Transform(
                                                      transform: Matrix4
                                                          .translationValues(
                                                              0, 25, 0),
                                                      child: RadialMenu(),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: GridView.count(
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15,
                                    crossAxisCount: 2,
                                    padding:
                                        EdgeInsets.fromLTRB(20, 20, 20, 12),
                                    children: [
                                      MyCard(
                                        asset: 'assets/images/icon1.png',
                                        title: 'نوبت مشاوره',
                                      ),
                                      MyCard(
                                        asset: 'assets/images/icon2.png',
                                        title: 'پلن درمانی من',
                                      ),
                                      MyCard(
                                        asset: 'assets/images/icon3.png',
                                        title: 'باشگاه مشتریان',
                                      ),
                                      MyCard(
                                        asset: 'assets/images/icon4.png',
                                        title: 'معرفی خدمات',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      centerTitle: true,
                      title: Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'خانم سپیده میرزایی',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'خوش آمدید',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      leading: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            drawerOpen = !drawerOpen;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
