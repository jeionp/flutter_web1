import 'package:flutter/material.dart';
import 'package:flutter_web1/helpers/responsiveness.dart';
import 'package:flutter_web1/widgets/large_screen.dart';
import 'package:flutter_web1/widgets/small_screen.dart';
import 'package:flutter_web1/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),),
    );
  }
}
