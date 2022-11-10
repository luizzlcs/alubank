import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/sections/account_actions.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/points_account.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:alubank/components/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          PointsAccount()
        ],
      ),
    );
  }
}
