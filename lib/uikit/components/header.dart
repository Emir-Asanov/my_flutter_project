import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cool_template/uikit/theme.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
    this.type = 'Sub screen',
    this.title = 'Title!',
  });

  final String type;
  final String title;
  @override
  Widget build(BuildContext context) {
    final theme = Modular.get<AppTheme>();
    final textTheme = theme.getTheme().extension<MyTextStyles>()!;
    final colors = theme.getTheme().extension<MyColors>()!;
    return Column(
      children: [
        SizedBox(
          height: ScreenUtil().statusBarHeight,
          width: ScreenUtil().screenWidth,
        ),
        type == HeaderSettings.onlyStatusBar
            ? const SizedBox()
            : type == HeaderSettings.menuAndLogo
                ? Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: colors.blackBerry,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: ScreenUtil().setHeight(44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          splashRadius: 25,
                          icon: SvgPicture.asset(GetPicture.userCircle),
                          onPressed: () {},
                        ),
                        SvgPicture.asset(GetPicture.logo),
                        IconButton(
                          splashRadius: 25,
                          icon: SvgPicture.asset(
                            GetPicture.hamburgerMenu,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                : type == HeaderSettings.subScreen
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        height: ScreenUtil().setHeight(44),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  print('object');
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          GetPicture.arrowLeft,
                                          width: ScreenUtil().setHeight(20),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text(
                                            'Back',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: false,
                                            style: textTheme.b2,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: textTheme.h6,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cancel',
                                    style: textTheme.b2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : const SizedBox(),
      ],
    );
  }
}

class HeaderSettings {
  static const subScreen = 'Sub screen';
  static const menuAndLogo = 'Menu w Logo';
  static const onlyStatusBar = 'OnlyStatusBar';
}
