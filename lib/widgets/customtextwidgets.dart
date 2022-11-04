import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(this.text,
      {super.key,
      this.fs = 20,
      this.fw = FontWeight.w700,
      this.of,
      this.color,
      this.ta,
      this.ls,
      this.td,
      this.ml});
  final String text;
  final double? fs;
  final FontWeight? fw;
  final TextOverflow? of;
  final Color? color;
  final TextAlign? ta;
  final double? ls;
  final TextDecoration? td;
  final int? ml;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: ta,
        overflow: of,
        maxLines: ml,
        style: GoogleFonts.nunito(
            decoration: td,
            fontSize: fs,
            fontWeight: fw,
            color: color,
            letterSpacing: ls));
  }
}

class SubtitleText extends StatelessWidget {
  const SubtitleText(this.text,
      {super.key,
      this.fs = 16,
      this.fw = FontWeight.w400,
      this.of,
      this.color,
      this.ta,
      this.ls,
      this.td});
  final String text;
  final double? fs;
  final FontWeight? fw;
  final TextOverflow? of;
  final Color? color;
  final TextAlign? ta;
  final double? ls;
  final TextDecoration? td;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: ta,
        overflow: of,
        style: GoogleFonts.nunito(
            decoration: td,
            fontSize: fs,
            fontWeight: fw,
            color: color,
            letterSpacing: ls));
  }
}

const horizontal = EdgeInsets.symmetric(horizontal: 16);
const vertical = EdgeInsets.symmetric(vertical: 16);
const all = EdgeInsets.all(16);
