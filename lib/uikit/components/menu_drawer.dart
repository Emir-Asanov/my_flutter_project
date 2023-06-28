import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cool_template/uikit/theme.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    super.key,
    this.title = 'Ttike menu drawer',
  });

  final String title;
  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    final theme = Modular.get<AppTheme>();
    final textTheme = theme.getTheme().extension<MyTextStyles>()!;
    final colors = theme.getTheme().extension<MyColors>()!;
    final borders = theme.getTheme().extension<MyBorderStyle>()!;
    return SizedBox(
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      child: Stack(
        children: [
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            color: colors.blackBerry.withOpacity(
              0.5,
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            margin: EdgeInsets.only(
              left: ScreenUtil().screenWidth -
                  (ScreenUtil().setWidth(
                            312,
                          ) >
                          400
                      ? 400
                      : ScreenUtil().setWidth(
                          312,
                        )),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(
                16,
              ),
              vertical: ScreenUtil().setHeight(
                48,
              ),
            ),
            width: ScreenUtil().setWidth(
              312,
            ),
            height: ScreenUtil().screenHeight,
            decoration: BoxDecoration(
              color: colors.white,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(
                  8,
                ),
              ),
              border: Border.all(
                width: 2,
                color: colors.blackBerry,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().statusBarHeight,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: textTheme.b1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          splashRadius: 18,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            GetPicture.x,
                          ),
                          iconSize: ScreenUtil().setHeight(
                            24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(32),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(
                      ScreenUtil().setHeight(12),
                    ),
                    height: ScreenUtil().setHeight(
                      72,
                    ),
                    width: ScreenUtil().setHeight(
                      280,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: borders.cornerMd,
                        border: Border.all(
                          width: 1,
                          color: colors.blackBerry,
                        )),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          GetPicture.avatar,
                          height: ScreenUtil().setHeight(48),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(8),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Goji Labs',
                                ),
                                Text(
                                  '@gojilabs',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: IconButton(
                            splashRadius: 18,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              GetPicture.caretRight,
                              width: ScreenUtil().setWidth(18),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: colors.blackBerry),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(18),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        GetPicture.placeholder,
                                        width: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 4,
                                        ),
                                        child: Text(
                                          'Menu Element',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  GetPicture.caretRight,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: colors.blackBerry),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(18),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        GetPicture.placeholder,
                                        width: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 4,
                                        ),
                                        child: Text(
                                          'Menu Element',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  GetPicture.caretRight,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: colors.blackBerry),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(18),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        GetPicture.placeholder,
                                        width: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 4,
                                        ),
                                        child: Text(
                                          'Menu Element',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  GetPicture.caretRight,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: colors.blackBerry),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(18),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        GetPicture.placeholder,
                                        width: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 4,
                                        ),
                                        child: Text(
                                          'Menu Element',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  GetPicture.caretRight,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: colors.blackBerry),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(18),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        GetPicture.placeholder,
                                        width: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 4,
                                        ),
                                        child: Text(
                                          'Menu Element',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  GetPicture.caretRight,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: colors.blackBerry,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      GetPicture.question,
                                      width: 20,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        'Help & Support',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                GetPicture.caretRight,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: colors.blackBerry,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      GetPicture.gearSix,
                                      width: 20,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        'Settings',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                GetPicture.caretRight,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(
                          32,
                        ),
                      ),
                      child: const Text(
                        'Version M.V.P.',
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
