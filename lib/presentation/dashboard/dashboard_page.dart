import 'package:calegpedia_apps/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;
  late List<Widget> _screens;
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();

  bool singleVendor = false;

  @override
  void initState() {
    super.initState();
    _screens = [
      const HomePage(),
      const Center(
        child: Text("Doc"),
      ),
      const Center(
        child: Text("Agenda"),
      ),
      const Center(
        child: Text("Profile"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: const Color(0xFFA2B2F0).withOpacity(
          0.2,
        ),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _pageIndex,
        type: BottomNavigationBarType.fixed,
        items: _getBottomWidget(singleVendor),
        onTap: (int index) {
          _setPage(index);
        },
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _screens.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _screens[index];
        },
      ),
    );
  }

  void _setPage(int pageIndex) {
    setState(() {
      _pageController.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }

  BottomNavigationBarItem _barItem(String icon, String? label, int index) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        color: index == _pageIndex
            ? const Color(0xFF748EF3)
            : const Color(0xFFA2B2F0).withOpacity(0.7),
        height: 25,
        width: 25,
      ),
      label: label,
    );
  }

  List<BottomNavigationBarItem> _getBottomWidget(bool isSingleVendor) {
    List<BottomNavigationBarItem> list = [];
    list.add(_barItem(Images.menuHomeIcon, 'Home', 0));
    list.add(_barItem(Images.menuDocIcon, 'Doc', 1));
    list.add(_barItem(Images.menuAgendaIcon, 'Agenda', 2));
    list.add(_barItem(Images.menuProfileIcon, 'Profile', 3));

    return list;
  }
}
