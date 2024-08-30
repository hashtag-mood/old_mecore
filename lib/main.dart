import 'package:flutter/material.dart';

void main() {
  runApp(const Diary());
}

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const TodayPage());
  }
}

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

final mainBorderSide = BorderSide(color: Colors.black);

class _TodayPageState extends State<TodayPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * 0.8;
    final double customDrawerWidth = drawerWidth * 0.9;
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          width: customDrawerWidth,
          decoration: BoxDecoration(
            border: Border(
                top: mainBorderSide,
                bottom: mainBorderSide,
                right: mainBorderSide),
          ),
          child: Drawer(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero)),
            backgroundColor: Colors.white,
            child: ListView(
              children: <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  leading: Image(
                    image: AssetImage('assets/img/logo.png'),
                    width: customDrawerWidth * 0.5,
                  ),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: mainHeight,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: mainHeight,
                        child: IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          icon: Icon(Icons.menu_sharp),
                          iconSize: mainHeight * 0.6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top: mainBorderSide,
                              bottom: mainBorderSide,
                              right: mainBorderSide,
                            )),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: double.infinity,
                      child: Image(
                        image: AssetImage('assets/img/user_image.jpg'),
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          top: mainBorderSide,
                          bottom: mainBorderSide,
                          right: mainBorderSide,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: mainHeight,
                      child: Center(
                        child: Text(
                          '2024-08-30',
                          style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: mainBorderSide,
                          bottom: mainBorderSide,
                          right: mainBorderSide,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top: mainBorderSide,
                              bottom: mainBorderSide,
                              right: mainBorderSide,
                            ))),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top: mainBorderSide,
                              bottom: mainBorderSide,
                            ))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
