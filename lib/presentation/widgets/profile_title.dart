import 'package:coding_challenge/config.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget
{
  String title;
  String subtitle;
  String trailing;

  ProfileTile
  (
    {
      Key? key,
      required this.title,
      required this.subtitle,
      required this.trailing,
    }
  ): super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Config config = Config();

    return Container
    (
      padding: EdgeInsets.only(bottom: config.profileTilePadding),
      child: Column
      (
        children: 
        [
          // list tile
          listTile(config),

          // divider
          divider(config),
        ],
      )
    );
  }

  Widget listTile(Config config)
  {
    return ListTile
    (
      title: Text
      (
        title,
        style: TextStyle
        (
          fontSize: config.profileTileTitleFontSize,
          fontWeight: config.profileTileFontWeight,
          color: config.profileTileColor,
        ),
      ),

      subtitle: Text
      (
        subtitle,
        style: TextStyle
        (
          fontSize: config.profileTileSubtitleFontSize,
          fontWeight: config.profileTileFontWeight,
          color: config.profileTileSubtileFontColor,
        ),
      ),

      trailing: Icon
      (
        config.profileTitleIcon,
        size: config.profileTileIconSize,
        color: config.profileTileColor,
      ),
    );
  }

  Widget divider(Config config)
  {
    return Divider
    (
      height: config.profileDividerSize,
      indent: config.profileDividerIndent,
      endIndent: config.profileDividerEndIndent,
    );
  }
}