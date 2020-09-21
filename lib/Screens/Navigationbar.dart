import 'package:flutter/material.dart';
import 'package:test1/Screens/Chats.dart';
import 'package:test1/Screens/Dashboard.dart';
import 'package:test1/Screens/MyAdd.dart';
import 'package:test1/Screens/Profile.dart';
import 'package:test1/Screens/Sell.dart';

class JiJiNavigationBar extends StatefulWidget {
  @override
  _JiJiNavigationBarState createState() => _JiJiNavigationBarState();
}

class _JiJiNavigationBarState extends State<JiJiNavigationBar> {
  Widget customAppbar = Text("appbar");
  TextEditingController _controller = TextEditingController();
  int _selectedTabIndex = 0;

  List _pages = [Dashboard(), Chats(), Sell(), MyAds(), Profile()];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(61, 184, 58, 1),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Jiji",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 1.7,
                  height: MediaQuery.of(context).size.height / 19,
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(2 / 5),
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 20),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  )),
              SizedBox(
                width: 35,
              ),
              Icon(
                Icons.notifications,
                size: 30,
              ),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
      body: _pages[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), title: Text("DashBoard")),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("Chat")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("Sell")),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq), title: Text("MyAdd")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Profile")),
        ],
      ),
    );
  }

  Widget customsearchbar() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Search", border: InputBorder.none),
    );
  }
}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextField(
        decoration:
            InputDecoration(border: InputBorder.none, hintText: 'Search'),
      ),
    );
  }
}
