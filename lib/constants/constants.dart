import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final oxstyle = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700));
final darkoxystyle = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700));

final scoreboard = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2));
final darkscoreboard = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2));
final nscoreboard = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
));
final darknscoreboard = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[100]));
final commonfont = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 2));
final dialogfont = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.bold,
        wordSpacing: 1.2,
        letterSpacing: 1.2));

final griddecoration = BoxDecoration(
  border: Border.all(color: Colors.blueGrey[900]),
);

final darkgriddecoration = BoxDecoration(
  border: Border.all(color: Colors.white70),
);

final boarddecoration = BoxDecoration(
//color: Colors.,
borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
          color: Colors.grey[600],
          offset: Offset(4.0, 4.0),
          blurRadius: 15.0,
          spreadRadius: 1.0),
      BoxShadow(
          color: Colors.grey[200],
          offset: Offset(-4.0, -4.0),
          blurRadius: 15.0,
          spreadRadius: 1.0),
    ]);

final darkboarddecoration = BoxDecoration(color: Colors.black87, 
borderRadius: BorderRadius.circular(20),

boxShadow: [
  
  BoxShadow(
      color: Colors.grey[350],
      offset: Offset(4.0, 4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0),
  BoxShadow(
      color: Colors.white,
      offset: Offset(-4.0, -4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0),
]);

final gridboarddecoration = BoxDecoration(color: Colors.grey[200], boxShadow: [
  BoxShadow(
      color: Colors.grey[500],
      offset: Offset(4.0, 4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0),
  BoxShadow(
      color: Colors.white,
      offset: Offset(-4.0, -4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0),
]);
