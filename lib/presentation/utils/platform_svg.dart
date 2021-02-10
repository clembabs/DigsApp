import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String SVG_BASE_PATH = 'lib/presentation/assets/svgs/';

class PlatformSvg {
  static Widget asset(
    String assetName, {
    double width,
    double height,
    BoxFit fit = BoxFit.contain,
    Color color,
    Alignment alignment = Alignment.center,
    String semanticsLabel,
    Function onTap,
  }) =>
      onTap == null
          ? Container(
              width: width,
              height: height,
              color: Colors.transparent,
              child: kIsWeb
                  ? Image.network(
                      '$SVG_BASE_PATH$assetName',
                      width: width,
                      height: height,
                      fit: fit,
                      color: color,
                      alignment: alignment,
                      semanticLabel: semanticsLabel,
                    )
                  : SvgPicture.asset(
                      '$SVG_BASE_PATH$assetName',
                      width: width,
                      height: height,
                      fit: fit,
                      color: color,
                      alignment: alignment,
                      semanticsLabel: semanticsLabel,
                    ),
            )
          : GestureDetector(
              onTap: onTap,
              child: Container(
                width: width,
                height: height,
                color: Colors.transparent,
                child: kIsWeb
                    ? Image.network(
                        '$SVG_BASE_PATH$assetName',
                        width: width,
                        height: height,
                        fit: fit,
                        color: color,
                        alignment: alignment,
                        semanticLabel: semanticsLabel,
                      )
                    : SvgPicture.asset(
                        '$SVG_BASE_PATH$assetName',
                        width: width,
                        height: height,
                        fit: fit,
                        color: color,
                        alignment: alignment,
                        semanticsLabel: semanticsLabel,
                      ),
              ),
            );
}
