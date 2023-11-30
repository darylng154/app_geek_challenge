import 'package:coding_challenge/features/profile/Config.dart';
import 'package:coding_challenge/features/profile/presentation/screens/profile_edit_screen.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget
{
  String title;
  String subtitle;
  String prompt;
  String label;

  ProfileTile
  (
    {
      Key? key,
      required this.title,
      required this.subtitle,
      required this.prompt,
      required this.label,
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
          _listTile(context),

          // divider
          _divider(),
        ],
      )
    );
  }

  Widget _listTile(BuildContext context)
  {
    return ListTile
    (
      onTap: () =>_editNav(context),
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

  Future<dynamic> _editNav(BuildContext context)
  {
    return Navigator.of(context).push
    (
      MaterialPageRoute
      (
        builder: (context) => ProfileEditScreen(title: title, prompt: prompt, label: label),
      ),
    );
  }
}