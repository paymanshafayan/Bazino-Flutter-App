import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamingTheme {
  // Cyberpunk Gaming Hub Palette
  static const Color darkBg = Color(0xFF060913);
  static const Color darkCard = Color(0x66111326); // Translucent for glassmorphism
  static const Color primary = Color(0xFF00FFCC); // Neon Cyan
  static const Color primaryHover = Color(0xFF00D1A3);
  static const Color secondary = Color(0xFF9D00FF); // Neon Purple
  static const Color goldAccent = Color(0xFFFFD700); // Neon Gold
  static const Color accentRed = Color(0xFFFF2A2A); // Neon Red
  static const Color textLight = Color(0xFFE5E7EB);
  static const Color textMuted = Color(0xFF8B93A5);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBg,
      primaryColor: primary,
      cardColor: darkCard,
      colorScheme: const ColorScheme.dark(
        primary: primary,
        secondary: secondary,
        surface: darkCard,
        error: accentRed,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.vazirmatn(
          fontSize: 36,
          fontWeight: FontWeight.w900,
          color: textLight,
          letterSpacing: 2,
        ),
        headlineMedium: GoogleFonts.vazirmatn(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: textLight,
        ),
        bodyLarge: GoogleFonts.vazirmatn(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textLight,
        ),
        bodyMedium: GoogleFonts.vazirmatn(
          fontSize: 12,
          color: textMuted,
        ),
        labelLarge: GoogleFonts.vazirmatn(
          fontSize: 14,
          fontWeight: FontWeight.w900,
          color: primary,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
