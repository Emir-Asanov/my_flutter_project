import 'package:cool_template/routes/routes.dart';
import 'package:cool_template/uikit/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';
import 'package:cool_template/uikit/components/primary_button_fixed.dart';

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
      body: Center(
        child: PrimaryButtonFixed(
          text: 'HEHEHEEHEH',
          rightIcon: false,
          leftIcon: false,
        ),
      ),
    );
  }
}
