import 'package:demo_app/src/screens/home_screen.dart';
import 'package:demo_app/src/widgets/discount_coupon_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 1;

  final List<Widget> _tabs = [
    DiscountCouponListView(),
    DiscountCouponListView(),
    DiscountCouponListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedIndex: _currentIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.sell),
            label: 'Coupons',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: _tabs[_currentIndex],
    );
  }
}