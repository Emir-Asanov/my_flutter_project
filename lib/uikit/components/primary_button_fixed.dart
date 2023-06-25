import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cool_template/assets/svg_picture.dart';

class PrimaryButtonFixed extends StatefulWidget {
  const PrimaryButtonFixed({
    super.key,
    this.leftIcon = false,
    this.rightIcon = false,
    required this.text,
  });

  final bool leftIcon;
  final bool rightIcon;
  final String text;
  @override
  State<PrimaryButtonFixed> createState() => _PrimaryButtonFixedState();
}

class _PrimaryButtonFixedState extends State<PrimaryButtonFixed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(4)),
      constraints: const BoxConstraints(
        maxHeight: 80,
      ),
      height: ScreenUtil().setHeight(56),
      width: 358,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.leftIcon
              ? SvgPicture.asset(GetPicture.arrowLeft)
              : const SizedBox(),
          Expanded(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'Satoshi',
                letterSpacing: 2,
              ),
            ),
          ),
          widget.rightIcon
              ? SvgPicture.asset(GetPicture.arrowRight)
              : const SizedBox()
        ],
      ),
    );
  }
}
