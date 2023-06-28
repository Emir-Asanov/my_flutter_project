import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cool_template/uikit/theme.dart';

class MyFooter extends StatefulWidget {
  const MyFooter({
    super.key,
    this.type = FooterSettings.typeDefault,
  });
  final String type;
  @override
  State<MyFooter> createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  @override
  Widget build(BuildContext context) {
    final theme = Modular.get<AppTheme>();
    final colors = theme.getTheme().extension<MyColors>()!;
    final borders = theme.getTheme().extension<MyBorderStyle>()!;
    return Stack(children: [
      Container(
        height: widget.type == FooterSettings.typeDefault
            ? ScreenUtil().setHeight(
                  72,
                ) +
                ScreenUtil().bottomBarHeight
            : ScreenUtil().setHeight(
                72,
              ),
        width: widget.type == FooterSettings.typeDefault
            ? ScreenUtil().screenWidth
            : 358,
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: widget.type == FooterSettings.typeDefault
              ? null
              : borders.cornerMd,
          border: widget.type == FooterSettings.typeDefault
              ? Border(
                  top: BorderSide(
                    width: 2,
                    color: colors.blackBerry,
                  ),
                )
              : Border.all(
                  width: 2,
                ),
          boxShadow: [
            borders.shadowLg,
          ],
        ),
        padding: widget.type == FooterSettings.typeDefault
            ? EdgeInsets.only(
                bottom: ScreenUtil().bottomBarHeight,
              )
            : null,
        margin: widget.type == FooterSettings.typeDefault
            ? null
            : EdgeInsets.only(
                bottom: ScreenUtil().bottomBarHeight > 0
                    ? ScreenUtil().bottomBarHeight
                    : 15,
              ),
        child: Material(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  GetPicture.house,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  GetPicture.usersThree,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  GetPicture.plus,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  GetPicture.calendarBlanck,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  GetPicture.bell,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class FooterSettings {
  static const typeDefault = 'default';
  static const typeFloating = 'floating';
}
