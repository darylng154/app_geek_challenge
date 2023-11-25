import 'package:coding_challenge/config.dart';
import 'package:coding_challenge/presentation/screens/profile_screen.dart';
import 'package:coding_challenge/presentation/widgets/profile_title.dart';
import 'package:flutter/material.dart';

class ProfileScreenState extends State<ProfileScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(),
      body: Center
      (
        child: ListView
        (
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / Config().listViewPaddingPerc),
          children: <Widget>
          [
            // temp Profile Name Top Padding box
            SizedBox
            (
              height: Config().profilePadding,
            ),

            // profile name
            const Center
            (
              child: Placeholder
              (
                fallbackHeight: 30,
              ),
            ),

            // temp Profile Name Bottom Padding box
            SizedBox
            (
              height: Config().profilePadding,
            ),
            
            // profile pic
            const Center
            (
              child: Placeholder
              (
                fallbackHeight: 100,
              ),
            ),

            // temp Profile Pic Bottom Padding box
            SizedBox
            (
              height: Config().profilePadding,
            ),

            const Column
            (
              children: 
              [
                // name
                ProfileTile(),
                // phone
                ProfileTile(),
                // email
                ProfileTile(),
                // tell us about yourself
                ProfileTile(),
              ],
            ),
            
          ]
        ),
      ),
    );
  }
}