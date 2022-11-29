import 'package:flutter_svg/flutter_svg.dart';

class PreCacheAssets {
  static Future<void> preLoadAllSvg() async {
    await Future.wait([
      precachePicture(
        ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder, // See UPDATE below!
          'assets/illustrations/list.svg',
        ),
        null,
      ),
      precachePicture(
        ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder, // See UPDATE below!
          'assets/icons/success.svg',
        ),
        null,
      ),
    ]);
  }
}
