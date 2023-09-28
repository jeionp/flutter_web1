import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web1/helpers/responsiveness.dart';
import 'package:flutter_web1/widgets/large_screen.dart';
import 'package:flutter_web1/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),),
    );
  }
}
