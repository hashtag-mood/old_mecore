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
    double mainHeight = MediaQuery.of(context).size.width / 7;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          child: Drawer(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  leading: Image(image: AssetImage('assets/img/logo.png')),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: mainBorderSide,
                  bottom: mainBorderSide,
                  right: mainBorderSide),
              borderRadius: BorderRadius.all(Radius.zero)),
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
