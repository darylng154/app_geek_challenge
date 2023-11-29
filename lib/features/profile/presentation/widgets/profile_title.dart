import 'package:coding_challenge/features/profile/Config.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget
{
  String title;
  String subtitle;

  ProfileTile
  (
    {
      Key? key,
      required this.title,
      required this.subtitle,
    }
  ): super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      padding: const EdgeInsets.only(bottom: Config.profileTilePadding),
      child: Column
      (
        children: 
        [
          // list tile
          _listTile(),

          // divider
          _divider(),
        ],
      )
    );
  }

  Widget _listTile()
  {
    return ListTile
    (
      // onTap: ,
      title: Text
      (
        title,
        style: TextStyle
        (
          fontSize: Config.profileTileTitleFontSize,
          fontWeight: Config.profileTileFontWeight,
          color: Config.profileTileColor,
        ),
      ),

      subtitle: Text
      (
        subtitle,
        style: const TextStyle
        (
          fontSize: Config.profileTileSubtitleFontSize,
          fontWeight: Config.profileTileFontWeight,
          color: Config.profileTileSubtileFontColor,
        ),
      ),

      trailing: Icon
      (
        Config.profileTitleIcon,
        size: Config.profileTileIconSize,
        color: Config.profileTileColor,
      ),
    );
  }

  Widget _divider()
  {
    return const Divider
    (
      height: Config.profileDividerSize,
      indent: Config.profileDividerIndent,
      endIndent: Config.profileDividerEndIndent,
    );
  }

  // Future<dynamic> navigation()
  // {
  //   return Navigator.of(context).push
  //   (
  //     MaterialPageRoute
  //     (
  //       builder: (context) => 
  //     ),
  //   );
  // }
}