import 'package:flutter/material.dart';
import 'package:shemiranweb/const.dart';

class MyDrawer extends StatefulWidget {
  final drawerWidth;
  MyDrawer({this.drawerWidth});
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void didUpdateWidget(MyDrawer oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {}
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Container(
            width: widget.drawerWidth,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  color: Colors.grey[100],
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Image.asset(
                            'assets/images/avatar.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
                MenuItem(
                  icon: Icons.inbox,
                  text: 'صفحه اصلی',
                  isActive: true,
                ),
                MenuItem(
                  icon: Icons.favorite,
                  text: 'پلن درمانی',
                  badge: '10',
                ),
                MenuItem(
                  icon: Icons.list,
                  text: 'دریافت نوبت',
                ),
                MenuItem(
                  icon: Icons.image,
                  text: 'گالری',
                  badge: '10',
                ),
                MenuItem(
                  icon: Icons.import_contacts,
                  text: 'خدمات',
                ),
                MenuItem(
                  icon: Icons.star,
                  text: 'امتیازات',
                ),
                MenuItem(
                  icon: Icons.book,
                  text: 'اخبار و مقالات',
                ),
                MenuItem(
                  icon: Icons.message,
                  text: 'پیغام ها',
                  badge: '10',
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final String badge;
  final isActive;
  final icon;
  final VoidCallback onTap;

  MenuItem({
    this.onTap,
    this.text,
    this.badge = '',
    this.isActive = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Color color = isActive ? Colors.purple[300] : Colors.black45;
    final lightColor = Theme.of(context).primaryColorLight;
    final darkColor = Theme.of(context).primaryColorDark;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          this.onTap();
        },
        highlightColor: lightColor,
        splashColor: lightColor,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 25,
                    child: Icon(
                      icon,
                      size: 18,
                      color: color,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 15.0, color: color),
                  ),
                ],
              ),
              Visibility(
                visible: badge != '',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: GlobalTheme.secondColor.withOpacity(0.3)),
                  child: Text(
                    badge,
                    style:
                        TextStyle(color: GlobalTheme.firstColor, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
