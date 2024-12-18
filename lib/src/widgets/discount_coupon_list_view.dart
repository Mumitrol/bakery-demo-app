import 'package:flutter/material.dart';
import '../settings/settings_view.dart';
import '../widgets/discount_coupon.dart'; // Make sure to create this file

class DiscountCouponListView extends StatelessWidget {
  const DiscountCouponListView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discount Coupons'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'discountCouponListView',
        // Adjust the number of coupons you want to display
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Add your onTap functionality here
                // For example, you could navigate to a details page
                // or show a dialog to redeem the coupon
              },
              child: const DiscountCoupon(),
            ),
          );
        },
      ),
    );
  }
}