import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/pages/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  int initIndex = 0;
  late TabController tabController;
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "",
    ),
  ];

  List<Widget> listWidget = [
    HomePage(),
    Center(),
    Center(),
    Center(),
  ];

  @override
  void initState() {
    tabController = TabController(vsync: this, length: items.length);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TabBarView(
            controller: tabController,
            children: listWidget.map((e) => e).toList()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: initIndex,
        items: items,
        onTap: (index) {},
      ),
    );
  }
}
