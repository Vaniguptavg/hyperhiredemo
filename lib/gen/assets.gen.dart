/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/charge.svg
  String get charge => 'assets/icons/charge.svg';

  /// File path: assets/icons/crown1.svg
  String get crown1 => 'assets/icons/crown1.svg';

  /// File path: assets/icons/crown2.svg
  String get crown2 => 'assets/icons/crown2.svg';

  /// File path: assets/icons/crown3.svg
  String get crown3 => 'assets/icons/crown3.svg';

  /// File path: assets/icons/nav1.svg
  String get nav1 => 'assets/icons/nav1.svg';

  /// File path: assets/icons/nav2.svg
  String get nav2 => 'assets/icons/nav2.svg';

  /// File path: assets/icons/nav3.svg
  String get nav3 => 'assets/icons/nav3.svg';

  /// File path: assets/icons/nav4.svg
  String get nav4 => 'assets/icons/nav4.svg';

  /// File path: assets/icons/sms.svg
  String get sms => 'assets/icons/sms.svg';

  /// List of all assets
  List<String> get values =>
      [charge, crown1, crown2, crown3, nav1, nav2, nav3, nav4, sms];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/banner1.png
  AssetGenImage get banner1 => const AssetGenImage('assets/images/banner1.png');

  /// File path: assets/images/banner2.png
  AssetGenImage get banner2 => const AssetGenImage('assets/images/banner2.png');

  /// File path: assets/images/banner3.png
  AssetGenImage get banner3 => const AssetGenImage('assets/images/banner3.png');

  /// File path: assets/images/banner4.png
  AssetGenImage get banner4 => const AssetGenImage('assets/images/banner4.png');

  /// File path: assets/images/cat1.jpg
  AssetGenImage get cat1 => const AssetGenImage('assets/images/cat1.jpg');

  /// File path: assets/images/cat10.jpg
  AssetGenImage get cat10 => const AssetGenImage('assets/images/cat10.jpg');

  /// File path: assets/images/cat2.jpg
  AssetGenImage get cat2 => const AssetGenImage('assets/images/cat2.jpg');

  /// File path: assets/images/cat3.jpg
  AssetGenImage get cat3 => const AssetGenImage('assets/images/cat3.jpg');

  /// File path: assets/images/cat4.jpg
  AssetGenImage get cat4 => const AssetGenImage('assets/images/cat4.jpg');

  /// File path: assets/images/cat5.jpg
  AssetGenImage get cat5 => const AssetGenImage('assets/images/cat5.jpg');

  /// File path: assets/images/cat6.jpg
  AssetGenImage get cat6 => const AssetGenImage('assets/images/cat6.jpg');

  /// File path: assets/images/cat7.jpg
  AssetGenImage get cat7 => const AssetGenImage('assets/images/cat7.jpg');

  /// File path: assets/images/cat8.jpg
  AssetGenImage get cat8 => const AssetGenImage('assets/images/cat8.jpg');

  /// File path: assets/images/cat9.jpg
  AssetGenImage get cat9 => const AssetGenImage('assets/images/cat9.jpg');

  /// File path: assets/images/product1.png
  AssetGenImage get product1 =>
      const AssetGenImage('assets/images/product1.png');

  /// File path: assets/images/product2.png
  AssetGenImage get product2 =>
      const AssetGenImage('assets/images/product2.png');

  /// File path: assets/images/product3.png
  AssetGenImage get product3 =>
      const AssetGenImage('assets/images/product3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        banner1,
        banner2,
        banner3,
        banner4,
        cat1,
        cat10,
        cat2,
        cat3,
        cat4,
        cat5,
        cat6,
        cat7,
        cat8,
        cat9,
        product1,
        product2,
        product3
      ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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
