// import 'package:flutter/material.dart';
// import 'package:mccpdc/src/utils/app_colors.dart';
// import 'package:mccpdc/src/utils/size_utils.dart';
// import 'package:mccpdc/src/widgets/customized_package/custom_flutter_bootstrap.dart';

// class ResponsiveTextWidget extends StatelessWidget {
//   ResponsiveTextWidget(
//     this.text, {
//     super.key,
//     this.fontSize,
//     this.fontStyle = FontStyle.normal,
//     this.fontFamily = 'Manrope',
//     this.fontWeight = FontWeight.normal,
//     this.textColor,
//     this.letterSpacing = 0.0,
//     this.textAlign = TextAlign.start,
//     this.textDecoration = TextDecoration.none,
//     this.lineHeight,
//     this.decorationColor,
//     this.maxLines,
//     this.textOverflow,
//     this.decorationThickness,
//     //Responsive
//     this.responsiveFontWeight,
//     this.responsiveFontSize,
//     this.responsiveletterSpacing,
//     this.responsiveletterTextAlign,
//     this.responsiveLineHeight,
//   });

//   final String text;
//   double? fontSize;
//   FontWeight fontWeight;
//   Color? textColor;
//   String fontFamily;
//   FontStyle fontStyle;
//   double letterSpacing;
//   TextAlign textAlign;
//   TextDecoration textDecoration;
//   double? lineHeight;
//   final Color? decorationColor;
//   final int? maxLines;
//   final TextOverflow? textOverflow;
//   final double? decorationThickness;

//   final Map<DEVICES, double>? responsiveFontSize;
//   final Map<DEVICES, FontWeight>? responsiveFontWeight;
//   final Map<DEVICES, double>? responsiveletterSpacing;
//   final Map<DEVICES, double>? responsiveLineHeight;

//   final Map<DEVICES, TextAlign>? responsiveletterTextAlign;

//   @override
//   Widget build(BuildContext context) {
//     if (responsiveFontSize != null) {
//       fontSize = SizeUtils.getResponsiveValue<double>(
//         context,
//         breakPointValues: responsiveFontSize!,
//       );
//     }
//     if (responsiveFontWeight != null) {
//       fontWeight = SizeUtils.getResponsiveValue<FontWeight>(
//         context,
//         breakPointValues: responsiveFontWeight!,
//       );
//     }

//     if (responsiveletterSpacing != null) {
//       letterSpacing = SizeUtils.getResponsiveValue<double>(
//         context,
//         breakPointValues: responsiveletterSpacing!,
//       );
//     }

//     if (responsiveletterTextAlign != null) {
//       textAlign = SizeUtils.getResponsiveValue<TextAlign>(
//         context,
//         breakPointValues: responsiveletterTextAlign!,
//       );
//     }
//     if (responsiveLineHeight != null) {
//       lineHeight = SizeUtils.getResponsiveValue<double>(
//         context,
//         breakPointValues: responsiveLineHeight!,
//       );
//     }
//     return Text(
//       text,
//       maxLines: maxLines,
//       textAlign: textAlign,
//       style: TextStyle(
//         fontSize: fontSize,
//         fontFamily: fontFamily,
//         fontWeight: fontWeight,
//         fontStyle: fontStyle,
//         color: textColor ?? AppColors.textPrimaryColor,
//         letterSpacing: letterSpacing,
//         height: lineHeight,
//         decoration: textDecoration,
//         decorationColor: decorationColor,
//         overflow: textOverflow,
//         decorationThickness: decorationThickness,
//       ),
//     );
//   }
// }
