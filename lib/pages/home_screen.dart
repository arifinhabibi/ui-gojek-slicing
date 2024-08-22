import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/fast_access_component.dart';
import 'package:gojek/components/gopay_component.dart';
import 'package:gojek/components/gopaylater_component.dart';
import 'package:gojek/components/header_component.dart';
import 'package:gojek/components/menu_component.dart';
import 'package:gojek/components/search_component.dart';
import 'package:gojek/models/gojek_icons.dart';
import 'package:gojek/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 71,
          backgroundColor: primary2,
          title: const HeaderComponent()),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // search section
            SearchComponent(),
            // gopay section
            GopayComponent(),
            // menu section
            MenuComponent(),
            // fast access section
            FastAccessComponent(),
            // gopay latter section
            GopayLaterComponent()
          ],
        ),
      ),
    );
  }
}
