import 'package:flutter/material.dart';

// read only file that configurates settings on widgets of the Profile Screen
class Config
{
  // Material App Settings
  final Color _themeColor = const Color.fromARGB(255, 65, 105, 225);
  
  Color get themeColor => _themeColor;


  // Profile Screen Settings
  // List View's Horizontal Padding to 7% of screen width
  final double _listViewPaddingPerc = 0.07;


  // Profile Name & Pic
  final double _profilePadding = 20;
  final double _profileNameSize = 26;

  double get listViewPaddingPerc => _listViewPaddingPerc;
  double get profilePadding => _profilePadding;
  double get profileNameSize => _profileNameSize;


  // Profile Tile Settings
  // Bottom Padding of each Tile
  final double _profileTilePadding = 10;
  final double _profileTileTitleFontSize = 12;
  final FontWeight _profileTileFontWeight = FontWeight.bold;
  final Color _profileTileColor = Colors.grey.shade600;
  final double _profileTileSubtitleFontSize = 14;
  final Color _profileTileSubtileFontColor = Colors.black;
  final IconData _profileTitleIcon = Icons.navigate_next_rounded;
  final double _profileTileIconSize = 35;

  double get profileTilePadding => _profileTilePadding;
  double get profileTileTitleFontSize => _profileTileTitleFontSize;
  FontWeight get profileTileFontWeight => _profileTileFontWeight;
  Color get profileTileColor => _profileTileColor;
  double get profileTileSubtitleFontSize => _profileTileSubtitleFontSize;
  Color get profileTileSubtileFontColor => _profileTileSubtileFontColor;
  IconData get profileTitleIcon => _profileTitleIcon;
  double get profileTileIconSize => _profileTileIconSize;
  // Color get profileTileIconColor => _profileTileIconColor;
  

  //Divider
  final double _profileDividerSize = 5;
  final double _profileDividerIndent = 10;
  final double _profileDividerEndIndent = 10;

  double get profileDividerSize => _profileDividerSize;
  double get profileDividerIndent => _profileDividerIndent;
  double get profileDividerEndIndent => _profileDividerEndIndent;

}