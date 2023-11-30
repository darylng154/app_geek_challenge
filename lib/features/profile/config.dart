import 'package:flutter/material.dart';

// File that configurates settings on widgets of the Profile Screen
// for easy UI editing and hot reloading
class Config
{
  // Material App Settings
  static const Color themeColor =  Color.fromARGB(255, 65, 105, 225);

  // -------------------------------------------------------------------------
  // Profile Screen Settings
  // List View's Horizontal Padding to 7% of screen width
  static const double listViewPaddingPerc = 0.07;

  // Profile Name & Pic
  static const double profilePadding = 20;
  static const double profileNameSize = 26;

  // -------------------------------------------------------------------------
  // Profile Tile Settings
  // Bottom Padding between each Tile (after Divider)
  static const double profileTilePadding = 0;
  static const double profileTileTitleFontSize = 12;
  static const FontWeight profileTileFontWeight = FontWeight.bold;
  // Actual Color from prototype (Hard to see with white background)
  // static const Color profileTileColor = Color.fromARGB(255, 238, 238, 238);
  static final Color profileTileColor = Colors.grey.shade500;
  static const double profileTileSubtitleFontSize = 14;
  static const Color profileTileSubtileFontColor = Colors.black;
  static const IconData profileTitleIcon = Icons.navigate_next_rounded;
  static const double profileTileIconSize = 35;

  // Divider Settings
  static const double profileDividerSize = 5;
  static const double profileDividerIndent = 10;
  static const double profileDividerEndIndent = 10;

  // -------------------------------------------------------------------------
  // Profile Edit Screen Settings
  static const double profileEditTextFieldPadding = 5;
  static const double profileEditPadding = 40;
  static const double profileEditPromptFontSize = 25;
  static const Color profileEditPromptFontColor = Colors.black;

  // Custom Text Field Settings
  static const double textFieldLabelPadding = 5;
  static const double textFieldLabelFontSize = 14;
  static final Color textFieldLabelFontColor  = Colors.grey.shade500;

  // Update Button Settings
  static const Color updateButtonColor = Colors.black;
  static const Color updateButtonTextColor = Colors.white;
  static const double updateButtonBaseline = 45;
  static const double updateButtonTextPadding = 5;
  static const double updateButtonFontSize = 12;
  static const double updateButtonHeight = 55;
}