import 'package:coding_challenge/config.dart';
// import 'package:coding_challenge/presentation/screens/profile_screen.dart';
import 'package:coding_challenge/presentation/widgets/profile_title.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget
{
  String firstName;
  String lastName;
  String phone;
  String email;
  String about;

  ProfileScreen
  (
    {
      Key? key,
      required this.firstName,
      required this.lastName,
      required this.phone,
      required this.email,
      required this.about,
    }
  ): super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Config config = Config();

    return Scaffold
    (
      appBar: AppBar(),
      body: Center
      (
        child: ListView
        (
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * config.listViewPaddingPerc),
          children: <Widget>
          [
            // Profile Screen Top Padding box
            SizedBox
            (
              height: config.profilePadding,
            ),

            // Profile Name Widget
            profileName(config),

            // Profile Name Bottom Padding box
            SizedBox
            (
              height: config.profilePadding,
            ),

            // Profile Pic Widget
            profilePic(config),

            // Profile Pic Bottom Padding box
            SizedBox
            (
              height: config.profilePadding,
            ),

            // Profile Column Tiles Widget
            profileColTiles(config),

            // Profile Screen Bottom Padding box
            SizedBox
            (
              height: config.profilePadding,
            ),
          ]
        ),
      ),
    );
  }

  Widget profileName(Config config)
  {
    return Text
    (
      "Edit Profile",
      textAlign: TextAlign.center,
      style: TextStyle
      (
        fontSize: config.profileNameSize,
        fontWeight: FontWeight.bold,
        color: config.themeColor
      ),
    );
  }

  Widget profilePic(Config config)
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
          color: config.themeColor,
        ),
      ),
    );
  }

  Widget profileColTiles(Config config)
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
          trailing: "",
        ),
        
        // phone
        ProfileTile
        (
          title: "Phone",
          subtitle: phone,
          trailing: "",
        ),
        
        // email
        ProfileTile
        (
          title: "Email",
          subtitle: email,
          trailing: "",
        ),
        
        // tell us about yourself
        ProfileTile
        (
          title: "Tell us about yourself",
          subtitle: about,
          trailing: "",
        ), 
      ],
    );
  }
}