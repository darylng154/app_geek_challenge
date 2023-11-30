import 'package:coding_challenge/features/profile/data/models/user.dart';
import 'package:coding_challenge/features/profile/Config.dart';
import 'package:coding_challenge/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:coding_challenge/features/profile/presentation/widgets/profile_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<ProfileBloc, ProfileState>
    (
      builder: (context, state)
      {
        return Scaffold
        (
          appBar: AppBar(),
          body: SafeArea
          (
            // ListView to add scrolling feature in case we add more fields
            child: ListView
            (
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * Config.listViewPaddingPerc),
              children: <Widget>
              [
                // Profile Name Widget
                _profileHeader(),

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
                _profileColTiles(state.user),

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
    );
  }

  Widget _profileHeader()
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

  Widget _profileColTiles(User user)
  {
    return Column
    (
      children: 
      [
        // name
        ProfileTile
        (
          title: "Name",
          subtitle: "${user.firstName ?? ""} ${user.lastName ?? ""}",
          prompt: "What's your name?",
          label: "First Name",
        ),
        
        // phone
        ProfileTile
        (
          title: "Phone",
          subtitle: user.phone ?? "",
          prompt: "What's your phone number?",
          label: "Your phone number",
        ),
        
        // email
        ProfileTile
        (
          title: "Email",
          subtitle: user.email ?? "",
          prompt: "What's your email?",
          label: "Your email address",
        ),
        
        // tell us about yourself
        ProfileTile
        (
          title: "Tell us about yourself",
          subtitle: user.bio ?? "",
          prompt: "What type of passenger are you?",
          label: "Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc.",
        ), 
      ],
    );
  }
}