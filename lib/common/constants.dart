import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// const String BASE_IMAGE_URL = 'https://carlsjr.id/assets/img/start.png';

// Colors Constant
const Color kDeepBlack = Color(0xFF000000);
const Color kRichBlack = Color(0xFF000814);
const Color kOxfordBlue = Color(0xFF001D3D);
const Color kPrussianBlue = Color(0xFF003566);
const Color kDeepGreen = Color(0xFF1B5E20);
const Color kMikadoYellow = Color(0xFFffc300);
const Color kMikadoRed = Color(0xfffa0202);
const Color kButtonRed = Color(0xFFCD202F);
const Color kDavysGrey = Color(0xFF4B5358);
const Color kGrey = Color(0xFF303030);
const Color kBrightWhite = Color(0xFFFFFFFF);
const Color kShadowWhite = Color(0xFFF2F2F2);
const Color kGreyTitle = Color(0xFF454545);
const Color kLightGrey = Color(0xFF909090);
const Color kTrans = Colors.transparent;
const Color kGreen = Color(0xFF1B5E20);

// Text Style Constant
final TextStyle kHeading5 = GoogleFonts.poppins(
    fontSize: 23,
    fontWeight: FontWeight.w400,
    color: kRichBlack
);

final TextStyle ksmalltext= GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: kButtonRed
);

final TextStyle kSmallTextBlack= GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: kRichBlack
);
final TextStyle kHeading6 = GoogleFonts.poppins(
    fontSize: 19,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: kMikadoRed
);

final TextStyle kSubtitle = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: kDeepBlack
);

final TextStyle kBodyText = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.25,
    color: kDeepBlack
);

final TextStyle kStoreText = GoogleFonts.roboto(
    fontSize: 20,
    letterSpacing: 0.25,
    color: kLightGrey
);

final TextStyle kStoreTAText = GoogleFonts.roboto(
    fontSize: 18,
    letterSpacing: 0.1,
    color: kDeepBlack
);

final TextStyle kStoreTakeAway = GoogleFonts.roboto(
    fontSize: 18,
    letterSpacing: 0.1,
    color: kRichBlack
);

final TextStyle kStoreTATextblack = GoogleFonts.roboto(
    fontSize: 18,
    letterSpacing: 0.1,
    color: kRichBlack
);

final TextStyle kBodyTextWhite = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: kBrightWhite
);

final TextStyle kBodyTextWhiteGame = GoogleFonts.poppins(
    fontSize: 8.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: kBrightWhite
);

final TextStyle kStoreTATextblackGame = GoogleFonts.roboto(
    fontSize: 10,
    letterSpacing: 0.1,
    color: kRichBlack
);

final TextStyle kTitleText = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    letterSpacing: 0.00005,
    color: kGreyTitle
);

final TextStyle kTitleButtonText = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    letterSpacing: 0.05,
    color: Colors.white
);

final TextStyle kCheckoutText = GoogleFonts.roboto(
  fontWeight: FontWeight.normal,
    fontSize: 16,
    letterSpacing: 0.25,
    color: kDeepBlack
);

final TextStyle kCheckoutDetailText = GoogleFonts.roboto(
    fontSize: 10,
    letterSpacing: 0.25,
    color: kDeepBlack
);

final TextStyle kCheckoutOtherText = GoogleFonts.roboto(
    fontSize: 16,
    letterSpacing: 0.25,
    color: kDeepBlack
);



// text theme
final kTextTheme = TextTheme(
  headlineSmall: kHeading5,
  titleLarge: kHeading6,
  titleMedium: kSubtitle,
  bodyMedium: kBodyText,
);

const kColorScheme = ColorScheme(
  primary: kMikadoYellow,
  secondary: kPrussianBlue,
  surface: kRichBlack,
  background: kRichBlack,
  error: Colors.red,
  onPrimary: kRichBlack,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.white,
  brightness: Brightness.dark,
);
