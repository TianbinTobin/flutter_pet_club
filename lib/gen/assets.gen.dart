/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesCommonGen get common => const $AssetsImagesCommonGen();
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
}

class $AssetsImagesCommonGen {
  const $AssetsImagesCommonGen();

  /// File path: assets/images/common/app-logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/common/app-logo.png');

  /// File path: assets/images/common/loading-logo.png
  AssetGenImage get loadingLogo =>
      const AssetGenImage('assets/images/common/loading-logo.png');

  /// File path: assets/images/common/loading-text.png
  AssetGenImage get loadingText =>
      const AssetGenImage('assets/images/common/loading-text.png');

  /// File path: assets/images/common/splash-background.png
  AssetGenImage get splashBackground =>
      const AssetGenImage('assets/images/common/splash-background.png');

  /// File path: assets/images/common/splash-logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/common/splash-logo.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appLogo, loadingLogo, loadingText, splashBackground, splashLogo];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/arrow-left.svg
  SvgGenImage get arrowLeft =>
      const SvgGenImage('assets/images/icons/arrow-left.svg');

  /// File path: assets/images/icons/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/images/icons/lock.svg');

  /// File path: assets/images/icons/mail.svg
  SvgGenImage get mail => const SvgGenImage('assets/images/icons/mail.svg');

  $AssetsImagesIconsNavGen get nav => const $AssetsImagesIconsNavGen();

  /// File path: assets/images/icons/shop.svg
  SvgGenImage get shop => const SvgGenImage('assets/images/icons/shop.svg');

  /// File path: assets/images/icons/wechat.svg
  SvgGenImage get wechat => const SvgGenImage('assets/images/icons/wechat.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrowLeft, lock, mail, shop, wechat];
}

class $AssetsImagesIconsNavGen {
  const $AssetsImagesIconsNavGen();

  /// File path: assets/images/icons/nav/home-active.svg
  SvgGenImage get homeActive =>
      const SvgGenImage('assets/images/icons/nav/home-active.svg');

  /// File path: assets/images/icons/nav/home.svg
  SvgGenImage get home => const SvgGenImage('assets/images/icons/nav/home.svg');

  /// File path: assets/images/icons/nav/message-active.svg
  SvgGenImage get messageActive =>
      const SvgGenImage('assets/images/icons/nav/message-active.svg');

  /// File path: assets/images/icons/nav/message.svg
  SvgGenImage get message =>
      const SvgGenImage('assets/images/icons/nav/message.svg');

  /// File path: assets/images/icons/nav/profile-active.svg
  SvgGenImage get profileActive =>
      const SvgGenImage('assets/images/icons/nav/profile-active.svg');

  /// File path: assets/images/icons/nav/profile.svg
  SvgGenImage get profile =>
      const SvgGenImage('assets/images/icons/nav/profile.svg');

  /// File path: assets/images/icons/nav/study-active.svg
  SvgGenImage get studyActive =>
      const SvgGenImage('assets/images/icons/nav/study-active.svg');

  /// File path: assets/images/icons/nav/study.svg
  SvgGenImage get study =>
      const SvgGenImage('assets/images/icons/nav/study.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        homeActive,
        home,
        messageActive,
        message,
        profileActive,
        profile,
        studyActive,
        study
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
