import 'package:coding_challenge/features/profile/Config.dart';
import 'package:coding_challenge/features/profile/presentation/widgets/profile_title.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget
{
  String firstName;
  String lastName;
  String phone;
  String email;
  String bio;

  ProfileScreen
  (
    {
      Key? key,
      required this.firstName,
      required this.lastName,
      required this.phone,
      required this.email,
      required this.bio,
    }
  ): super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(),
      body: SafeArea
      (
        child: ListView
        (
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * Config.listViewPaddingPerc),
          children: <Widget>
          [
            // // Profile Screen Top Padding box
            // SizedBox
            // (
            //   height: Config.profilePadding,
            // ),

            // Profile Name Widget
            _profileName(),

            // Profile Name Bottom Padding box
            const SizedBox
            (
              height: Config.profilePadding,
            ),

            // Profile Pic Widget
            _profilePic(),

            // Profile Pic Bottom Padding box
            const SizedBox
            (
              height: Config.profilePadding,
            ),

            // Profile Column Tiles Widget
            _profileColTiles(),

            // Profile Screen Bottom Padding box
            const SizedBox
            (
              height: Config.profilePadding,
            ),
          ]
        ),
      ),
    );
  }

  Widget _profileName()
  {
    return const Text
    (
      "Edit Profile",
      textAlign: TextAlign.center,
      style: TextStyle
      (
        fontSize: Config.profileNameSize,
        fontWeight: FontWeight.bold,
        color: Config.themeColor
      ),
    );
  }

  Widget _profilePic()
  {
    return Container
    (
      width: 100,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration
      (
        shape: BoxShape.circle,
        border: Border.all
        (
          width: 5,
          color: Config.themeColor,
        ),
      ),
    );
  }

  Widget _profileColTiles()
  {
    return Column
    (
      children: 
      [
        // name
        ProfileTile
        (
          title: "Name",
          subtitle: "$firstName $lastName",
        ),
        
        // phone
        ProfileTile
        (
          title: "Phone",
          subtitle: phone,
        ),
        
        // email
        ProfileTile
        (
          title: "Email",
          subtitle: email,
        ),
        
        // tell us about yourself
        ProfileTile
        (
          title: "Tell us about yourself",
          subtitle: bio,
        ), 
      ],
    );
  }
}