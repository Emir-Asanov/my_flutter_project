import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

@immutable
class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.gojiBerry,
    required this.blackBerry,
    required this.text,
    required this.disabled,
    required this.white,
    required this.link,
    required this.success,
    required this.warning,
    required this.error,
  });

  const MyColors.standart({
    this.gojiBerry = const Color(0xFFFC2865),
    this.blackBerry = const Color(0xFF000022),
    this.text = const Color(0xFF1E1D1F),
    this.disabled = const Color(0xFFCACACC),
    this.white = const Color(0xffFDFDFD),
    this.link = const Color(0xFF4C91ED),
    this.success = const Color(0xFF27AE60),
    this.warning = const Color(0xFFF7CB45),
    this.error = const Color(0xFFEB4242),
  });

  final Color gojiBerry;
  final Color blackBerry;
  final Color text;
  final Color disabled;
  final Color white;
  final Color link;
  final Color success;
  final Color warning;
  final Color error;

  @override
  MyColors copyWith({
    Color? gojiBerry,
    Color? blackBerry,
    Color? text,
    Color? disabled,
    Color? white,
    Color? link,
    Color? success,
    Color? warning,
    Color? error,
  }) {
    return MyColors(
      gojiBerry: gojiBerry ?? this.gojiBerry,
      blackBerry: blackBerry ?? this.blackBerry,
      text: text ?? this.text,
      disabled: disabled ?? this.disabled,
      white: white ?? this.white,
      link: link ?? this.link,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
    );
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      gojiBerry: Color.lerp(gojiBerry, other.gojiBerry, t) ?? Colors.black,
      blackBerry: Color.lerp(blackBerry, other.blackBerry, t) ?? Colors.black,
      text: Color.lerp(text, other.text, t) ?? Colors.black,
      disabled: Color.lerp(disabled, other.disabled, t) ?? Colors.black,
      white: Color.lerp(white, other.white, t) ?? Colors.black,
      link: Color.lerp(link, other.link, t) ?? Colors.black,
      success: Color.lerp(success, other.success, t) ?? Colors.black,
      warning: Color.lerp(warning, other.warning, t) ?? Colors.black,
      error: Color.lerp(error, other.error, t) ?? Colors.black,
    );
  }

  @override
  String toString() => 'MyColors()';
}

@immutable
class MyTextStyles extends ThemeExtension<MyTextStyles> {
  const MyTextStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.p1,
    required this.p1Bold,
    required this.p1Italic,
    required this.p2,
    required this.p2Bold,
    required this.p2Italic,
    required this.p3,
    required this.p3Bold,
    required this.p3Italic,
    required this.b1,
    required this.b2,
    required this.b3,
    required this.b4,
    required this.l1,
    required this.l2,
    required this.l3,
    required this.l4,
    required this.l5,
  });
  const MyTextStyles.defaultTextStyles({
    this.h1 = const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 28,
      fontFamily: 'Satoshi',
    ),
    this.h2 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      fontFamily: 'Satoshi',
    ),
    this.h3 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 22,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.h4 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.h5 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.h6 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.p1 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'Roboto',
    ),
    this.p1Bold = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      fontFamily: 'Roboto',
    ),
    this.p1Italic = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'Roboto',
      fontStyle: FontStyle.italic,
      letterSpacing: 1,
    ),
    this.p2 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontFamily: 'Roboto',
      letterSpacing: 1,
    ),
    this.p2Bold = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      fontFamily: 'Roboto',
      letterSpacing: 1,
    ),
    this.p2Italic = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontFamily: 'Roboto',
      fontStyle: FontStyle.italic,
      letterSpacing: 1,
    ),
    this.p3 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: 'Roboto',
      letterSpacing: 2,
    ),
    this.p3Bold = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      fontFamily: 'Roboto',
      letterSpacing: 2,
    ),
    this.p3Italic = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: 'Roboto',
      letterSpacing: 2,
      fontStyle: FontStyle.italic,
    ),
    this.b1 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.b2 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.b3 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.b4 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: 'Satoshi',
      letterSpacing: 2,
    ),
    this.l1 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: 'Roboto',
      letterSpacing: 4,
    ),
    this.l2 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      fontFamily: 'Roboto',
      letterSpacing: 4,
    ),
    this.l3 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      fontFamily: 'Roboto',
      letterSpacing: 3,
    ),
    this.l4 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: 'Roboto',
      letterSpacing: 3,
    ),
    this.l5 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: 'Roboto',
      letterSpacing: 2,
    ),
  });
  final TextStyle? h1;
  final TextStyle? h2;
  final TextStyle? h3;
  final TextStyle? h4;
  final TextStyle? h5;
  final TextStyle? h6;

  final TextStyle? p1;
  final TextStyle? p1Bold;
  final TextStyle? p1Italic;
  final TextStyle? p2;
  final TextStyle? p2Bold;
  final TextStyle? p2Italic;
  final TextStyle? p3;
  final TextStyle? p3Bold;
  final TextStyle? p3Italic;

  final TextStyle? b1;
  final TextStyle? b2;
  final TextStyle? b3;
  final TextStyle? b4;

  final TextStyle? l1;
  final TextStyle? l2;
  final TextStyle? l3;
  final TextStyle? l4;
  final TextStyle? l5;

  @override
  MyTextStyles copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
    TextStyle? p1,
    TextStyle? p1Bold,
    TextStyle? p1Italic,
    TextStyle? p2,
    TextStyle? p2Bold,
    TextStyle? p2Italic,
    TextStyle? p3,
    TextStyle? p3Bold,
    TextStyle? p3Italic,
  }) {
    return MyTextStyles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
      p1: p1 ?? this.p1,
      p2: p2 ?? this.p2,
      p3: p3 ?? this.p3,
      p1Bold: p1Bold ?? this.p1Bold,
      p2Bold: p2Bold ?? this.p2Bold,
      p3Bold: p3Bold ?? this.p3Bold,
      p1Italic: p1Italic ?? this.p1Italic,
      p2Italic: p2Italic ?? this.p2Italic,
      p3Italic: p3Italic ?? this.p3Italic,
      b1: b1 ?? this.b1,
      b2: b2 ?? this.b2,
      b3: b3 ?? this.b3,
      b4: b4 ?? this.b4,
      l1: l1 ?? this.l1,
      l2: l2 ?? this.l2,
      l3: l3 ?? this.l3,
      l4: l4 ?? this.l4,
      l5: l5 ?? this.l5,
    );
  }

  @override
  MyTextStyles lerp(ThemeExtension<MyTextStyles>? other, double t) {
    if (other is! MyTextStyles) {
      return this;
    }
    return MyTextStyles(
      b1: TextStyle.lerp(b1, other.b1, t),
      b2: TextStyle.lerp(b2, other.b2, t),
      b3: TextStyle.lerp(b3, other.b3, t),
      b4: TextStyle.lerp(b4, other.b4, t),
      h1: TextStyle.lerp(h1, other.h1, t),
      h2: TextStyle.lerp(h2, other.h2, t),
      h3: TextStyle.lerp(h3, other.h3, t),
      h4: TextStyle.lerp(h4, other.h4, t),
      h5: TextStyle.lerp(h5, other.h5, t),
      h6: TextStyle.lerp(h6, other.h6, t),
      l1: TextStyle.lerp(l1, other.l1, t),
      l2: TextStyle.lerp(l2, other.l2, t),
      l3: TextStyle.lerp(l3, other.l3, t),
      l4: TextStyle.lerp(l4, other.l4, t),
      l5: TextStyle.lerp(l5, other.l5, t),
      p1: TextStyle.lerp(p1, other.p1, t),
      p1Bold: TextStyle.lerp(p1Bold, other.p1Bold, t),
      p1Italic: TextStyle.lerp(p1Italic, other.p1Italic, t),
      p2: TextStyle.lerp(p2, other.p2, t),
      p2Bold: TextStyle.lerp(p2Bold, other.p2Bold, t),
      p2Italic: TextStyle.lerp(p2Italic, other.p2Italic, t),
      p3: TextStyle.lerp(p1, other.p1, t),
      p3Bold: TextStyle.lerp(p1, other.p1, t),
      p3Italic: TextStyle.lerp(p1, other.p1, t),
    );
  }
}

@immutable
class MyBorderStyle extends ThemeExtension<MyBorderStyle> {
  const MyBorderStyle({
    required this.cornerNil,
    required this.cornerSm,
    required this.cornerMd,
    required this.cornerLg,
    required this.strokeSm,
    required this.strokeMd,
    required this.strokeLg,
    required this.shadowSm,
    required this.shadowMd,
    required this.shadowLg,
  });

  const MyBorderStyle.defaultBorderStyle({
    this.cornerNil = const BorderRadius.all(
      Radius.circular(
        0,
      ),
    ),
    this.cornerSm = const BorderRadius.all(
      Radius.circular(
        2,
      ),
    ),
    this.cornerMd = const BorderRadius.all(
      Radius.circular(
        4,
      ),
    ),
    this.cornerLg = const BorderRadius.all(
      Radius.circular(
        8,
      ),
    ),
    this.strokeSm = const Border.fromBorderSide(
      BorderSide(
        color: Color(0xff000022),
        width: 1,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
    this.strokeMd = const Border.fromBorderSide(
      BorderSide(
        color: Color(0xff000022),
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
    this.strokeLg = const Border.fromBorderSide(
      BorderSide(
        color: Color(0xff000022),
        width: 4,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
    this.shadowSm = const BoxShadow(
      offset: Offset(
        2,
        2,
      ),
    ),
    this.shadowMd = const BoxShadow(
      offset: Offset(
        3,
        3,
      ),
    ),
    this.shadowLg = const BoxShadow(
      offset: Offset(
        6,
        6,
      ),
    ),
  });

  final BorderRadius cornerNil;
  final BorderRadius cornerSm;
  final BorderRadius cornerMd;
  final BorderRadius cornerLg;
  final BoxBorder strokeSm;
  final BoxBorder strokeMd;
  final BoxBorder strokeLg;
  final BoxShadow shadowSm;
  final BoxShadow shadowMd;
  final BoxShadow shadowLg;

  @override
  MyBorderStyle copyWith({
    BorderRadius? cornerNil,
    BorderRadius? cornerSm,
    BorderRadius? cornerMd,
    BorderRadius? cornerLg,
    BoxBorder? strokeSm,
    BoxBorder? strokeMd,
    BoxBorder? strokeLg,
    BoxShadow? shadowSm,
    BoxShadow? shadowMd,
    BoxShadow? shadowLg,
  }) {
    return MyBorderStyle(
      cornerNil: cornerNil ?? this.cornerNil,
      cornerSm: cornerSm ?? this.cornerSm,
      cornerMd: cornerMd ?? this.cornerMd,
      cornerLg: cornerLg ?? this.cornerLg,
      strokeSm: strokeSm ?? this.strokeSm,
      strokeMd: strokeMd ?? this.strokeMd,
      strokeLg: strokeLg ?? this.strokeLg,
      shadowSm: shadowSm ?? this.shadowSm,
      shadowMd: shadowMd ?? this.shadowMd,
      shadowLg: shadowLg ?? this.shadowLg,
    );
  }

  @override
  MyBorderStyle lerp(ThemeExtension<MyBorderStyle>? other, double t) {
    if (other is! MyBorderStyle) {
      return this;
    }
    return MyBorderStyle(
      cornerNil: BorderRadius.lerp(cornerNil, other.cornerNil, t) ??
          const BorderRadius.all(Radius.circular(0)),
      cornerSm: BorderRadius.lerp(cornerSm, other.cornerSm, t) ??
          const BorderRadius.all(Radius.circular(0)),
      cornerMd: BorderRadius.lerp(cornerMd, other.cornerMd, t) ??
          const BorderRadius.all(Radius.circular(0)),
      cornerLg: BorderRadius.lerp(cornerLg, other.cornerLg, t) ??
          const BorderRadius.all(Radius.circular(0)),
      strokeSm: BoxBorder.lerp(strokeSm, other.strokeSm, t) ??
          const Border.fromBorderSide(
            BorderSide(
              color: Color(0xff000022),
              width: 1,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
      strokeMd: BoxBorder.lerp(strokeMd, other.strokeMd, t) ??
          const Border.fromBorderSide(
            BorderSide(
              color: Color(0xff000022),
              width: 2,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
      strokeLg: BoxBorder.lerp(strokeLg, other.strokeLg, t) ??
          const Border.fromBorderSide(
            BorderSide(
              color: Color(0xff000022),
              width: 4,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
      shadowLg:
          BoxShadow.lerp(shadowLg, other.shadowLg, t) ?? const BoxShadow(),
      shadowSm:
          BoxShadow.lerp(shadowSm, other.shadowSm, t) ?? const BoxShadow(),
      shadowMd:
          BoxShadow.lerp(shadowMd, other.shadowMd, t) ?? const BoxShadow(),
    );
  }
}

class MyPadding extends ThemeExtension<MyPadding> {
  const MyPadding({
    required this.pad2,
    required this.pad4,
    required this.pad8,
    required this.pad12,
    required this.pad16,
    required this.pad20,
    required this.pad24,
    required this.pad32,
    required this.gap2,
    required this.gap4,
    required this.gap8,
    required this.gap12,
    required this.gap16,
    required this.gap20,
    required this.gap32,
  });
  final int pad2;
  final int pad4;
  final int pad8;
  final int pad12;
  final int pad16;
  final int pad20;
  final int pad24;
  final int pad32;
  final int gap2;
  final int gap4;
  final int gap8;
  final int gap12;
  final int gap16;
  final int gap20;
  final int gap32;

  const MyPadding.standart({
    this.pad2 = 2,
    this.pad4 = 4,
    this.pad8 = 8,
    this.pad12 = 12,
    this.pad16 = 16,
    this.pad20 = 20,
    this.pad24 = 24,
    this.pad32 = 32,
    this.gap2 = 2,
    this.gap4 = 4,
    this.gap8 = 8,
    this.gap12 = 12,
    this.gap16 = 16,
    this.gap20 = 20,
    this.gap32 = 32,
  });
  @override
  MyPadding copyWith({
    int? pad2,
    int? pad4,
    int? pad8,
    int? pad12,
    int? pad16,
    int? pad20,
    int? pad24,
    int? pad32,
    int? gap2,
    int? gap4,
    int? gap8,
    int? gap12,
    int? gap16,
    int? gap20,
    int? gap32,
  }) {
    return MyPadding(
      pad2: pad2 ?? this.pad2,
      pad4: pad4 ?? this.pad4,
      pad8: pad8 ?? this.pad8,
      pad12: pad12 ?? this.pad12,
      pad16: pad16 ?? this.pad16,
      pad20: pad20 ?? this.pad20,
      pad24: pad24 ?? this.pad24,
      pad32: pad32 ?? this.pad32,
      gap2: gap2 ?? this.gap2,
      gap4: gap2 ?? this.gap2,
      gap8: gap2 ?? this.gap2,
      gap12: gap2 ?? this.gap2,
      gap16: gap2 ?? this.gap2,
      gap20: gap2 ?? this.gap2,
      gap32: gap2 ?? this.gap2,
    );
  }

  @override
  MyPadding lerp(ThemeExtension<MyPadding>? other, double t) {
    if (other is! MyPadding) {
      return this;
    }
    return MyPadding.standart(
      pad2: interpolate(pad2, other.pad2, t),
      pad4: interpolate(pad4, other.pad4, t),
      pad8: interpolate(pad8, other.pad8, t),
      pad12: interpolate(pad12, other.pad12, t),
      pad16: interpolate(pad16, other.pad16, t),
      pad20: interpolate(pad20, other.pad20, t),
      pad24: interpolate(pad24, other.pad24, t),
      pad32: interpolate(pad32, other.pad32, t),
      gap2: interpolate(gap2, other.gap2, t),
      gap4: interpolate(gap4, other.gap4, t),
      gap8: interpolate(gap8, other.gap8, t),
      gap12: interpolate(gap12, other.gap12, t),
      gap16: interpolate(gap16, other.gap16, t),
      gap20: interpolate(gap20, other.gap20, t),
      gap32: interpolate(gap32, other.gap32, t),
    );
  }

  int interpolate(int start, int end, double t) {
    t = t.clamp(0.0, 1.0);
    int interpolatedValue = (start + (end - start) * t).round();
    return interpolatedValue;
  }
}

class AppTheme {
  final standartTheme = ThemeData.light().copyWith(
    extensions: [
      const MyColors.standart(),
      const MyTextStyles.defaultTextStyles(),
      const MyBorderStyle.defaultBorderStyle(),
      const MyPadding.standart(),
    ],
  );

  final appThemeStream = BehaviorSubject<ThemeData>(sync: true);

  ThemeData getTheme() => appThemeStream.value;

  AppTheme() {
    appThemeStream.add(standartTheme);
  }
}
