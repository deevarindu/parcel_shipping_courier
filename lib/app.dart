import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/parcel_app_theme.dart';
import 'package:flutter_parcel_app/ui/screens/home_screen.dart';
import 'package:flutter_parcel_app/ui/screens/screens.dart';
import 'package:flutter_parcel_app/ui/widgets/my_bottom_navigation_bar.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcel Shipping Courier App',
      theme: ParcelAppTheme.lightTheme,
      home: Scaffold(
        body: SendParcelCheckoutScreen(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
