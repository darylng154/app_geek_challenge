import 'package:flutter/material.dart';

class Config
{
  // Material App Settings
  final String _appTitle = "Home Screen";
  final Color _themeColor = const Color.fromARGB(255, 65, 105, 225);
  
  String get appTitle => _appTitle;
  Color get themeColor => _themeColor;


  // Profile Screen Settings
  // List View's Horizontal Padding to 10% of screen width
  final double _listViewPaddingPerc = 10;
  final double _profilePadding = 20;

  double get listViewPaddingPerc => _listViewPaddingPerc;
  double get profilePadding => _profilePadding;

  // Profile Tile Settings
  // Bottom Padding of each Tile
  final double _profileTilePadding = 10;
  


  double get profileTilePadding => _profileTilePadding;

}