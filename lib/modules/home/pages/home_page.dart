import 'package:cool_template/routes/routes.dart';
import 'package:cool_template/uikit/components/footer.dart';
import 'package:cool_template/uikit/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';
import 'package:cool_template/uikit/components/primary_button_fixed.dart';
import 'package:cool_template/uikit/components/header.dart';
import 'package:cool_template/uikit/components/menu_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    final theme = Modular.get<AppTheme>();
    // final textTheme = theme.getTheme().extension<MyTextStyles>()!;
    final colors = theme.getTheme().extension<MyColors>()!;

    return const Scaffold(
      body: Stack(children: [
        Column(
          children: [
            MyHeader(
              title: 'helOOO!',
              type: HeaderSettings.menuAndLogo,
            ),
            Expanded(
              child: Center(
                child: MyPrimaryButtonFixed(
                  text: 'HEHEHEEHEH',
                  rightIcon: false,
                  leftIcon: false,
                ),
              ),
            ),
            MyFooter(
              type: FooterSettings.typeFloating,
            )
          ],
        ),
        MenuDrawer(),
      ]),
    );
  }
}
