import 'package:flutter/material.dart';
import 'package:trade_021/pages/open_orders.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex = 0;
  BottomNavBar(this.currentIndex, {super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedIconTheme: IconThemeData(color: Colors.blue[900]),
      unselectedIconTheme: IconThemeData(color: Colors.grey[800]),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue[900],
      selectedLabelStyle: const TextStyle(
        color: Colors.lightBlue,
        fontSize: 14,
      ),
      unselectedLabelStyle: const TextStyle(color: Colors.black, fontSize: 14),
      currentIndex: widget.currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up_rounded),
          label: 'Market',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.swap_horiz_outlined),
          label: 'Exchange',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_outlined),
          label: 'Portfolio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Profile',
        ),
      ],
      onTap: (value) {},
    );
  }
}
