import 'package:flutter/material.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    final mainBorderSide = BorderSide(color: Colors.black);

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          decoration: BoxDecoration(
              border: Border(
                  right: mainBorderSide,
                  top: mainBorderSide,
                  bottom: mainBorderSide)),
          child: Drawer(
            width: mainHeight * 5,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: mainBorderSide,
                    ),
                  ),
                  height: mainHeight * 0.25,
                  child: ListTile(
                    tileColor: Colors.pink,
                  ),
                ),
                Container(
                  height: mainHeight,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: mainBorderSide,
                    ),
                  ),
                  child: ListTile(
                    leading: Text('💟'),
                    title: Text('Monthly'),
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
                          '2024년',
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
