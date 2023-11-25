import 'package:coding_challenge/config.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget
{
  const ProfileTile
  (
    {
      Key? key,
    }
  ): super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      padding: EdgeInsets.only(bottom: Config().profileTilePadding),
      child: Column
      (
        children: 
        [
          // list tile
          Container
          (
            padding: EdgeInsets.only(bottom: Config().profileTilePadding),
            child: const Placeholder
            (
              fallbackHeight: 30,
            ),
          ),

          // divider
          const Placeholder
          (
            fallbackHeight: 5,
          )
        ],
      )
    );
  }
}