import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cool_template/uikit/theme.dart';

class MyPrimaryButtonFixed extends StatefulWidget {
  const MyPrimaryButtonFixed({
    super.key,
    this.leftIcon = false,
    this.rightIcon = false,
    required this.text,
  });

  final bool leftIcon;
  final bool rightIcon;
  final String text;
  @override
  State<MyPrimaryButtonFixed> createState() => _MyPrimaryButtonFixedState();
}

class _MyPrimaryButtonFixedState extends State<MyPrimaryButtonFixed> {
  @override
  int state = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Modular.get<AppTheme>();
    final textTheme = theme.getTheme().extension<MyTextStyles>()!;
    final colors = theme.getTheme().extension<MyColors>()!;
    final borders = theme.getTheme().extension<MyBorderStyle>()!;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            if (state > 2) {
              state = 0;
            }
            state++;
          });
          print(state);
        },
        splashColor: colors.white,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.blackBerry,
            borderRadius: borders.cornerMd,
            border: state == 0
                ? null
                : state == 1
                    ? borders.strokeSm
                    : state == 2
                        ? borders.strokeMd
                        : null,
          ),
          constraints: const BoxConstraints(
            maxHeight: 80,
          ),
          height: ScreenUtil().setHeight(56),
          width: 358,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.leftIcon
                  ? SvgPicture.asset(
                      GetPicture.arrowLeft,
                      color: colors.white,
                    )
                  : const SizedBox(),
              Expanded(
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: textTheme.b1.copyWith(color: colors.white),
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              widget.rightIcon
                  ? SvgPicture.asset(
                      GetPicture.arrowRight,
                      color: colors.white,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
