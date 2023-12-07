import 'package:flutter/material.dart';
import 'package:news_app/business.dart';
import 'package:news_app/sports.dart';
import 'package:news_app/science.dart';
import 'package:news_app/technology.dart';
import 'package:news_app/entertainment.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentPage = 0;
  final _pages = [
    BusinessNews(),
    SportsNews(),
    ScienceNews(),
    TechnologyNews(),
    EntertainmentNews(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("Headlines India",style: TextStyle(color: Colors.white),),
          ),
          body: _pages[_currentPage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentPage,
            onTap: (int index){
              setState(() {
                _currentPage = index;
              });
           },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.account_balance, color: Colors.white,),
                  label: "Business",
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.directions_run,
                    color: Colors.white,),
                  label: "Sports",
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.airplanemode_active,  color: Colors.white,),
                  label: "Science",
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.airplay, color: Colors.white,),
                  label: "Technology",
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.airline_seat_recline_extra, color: Colors.white,),
                  label: "Entertainment",
              ),
            ],
          ),
        ),
      ), //onWillPop: () {},
    );
  }
}