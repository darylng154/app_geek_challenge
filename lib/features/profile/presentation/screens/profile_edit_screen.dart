import 'package:coding_challenge/features/profile/data/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coding_challenge/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:coding_challenge/features/profile/Config.dart';
import 'package:coding_challenge/features/profile/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

// Stateful Widget to take advantage of initState to initalize because the CustomTextField's
// input glitches if we initialize inside build() => has to be doubled click to work
class ProfileEditScreen extends StatefulWidget
{
  final String title;
  final String prompt;
  final String label;

  ProfileEditScreen
  (
    {
      Key? key,
      required this.title,
      required this.prompt,
      required this.label,
    }
  ): super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileEditScreenState();
}

class ProfileEditScreenState extends State<ProfileEditScreen>
{
  late dynamic _controller;
  late dynamic _controller2;
  late Widget _textFields;

  @override
  void initState() 
  {
    super.initState();
    
    // Provides User data through the Bloc so controllers can initialize it's text
    // if there is any
    final ProfileBloc profileBloc = BlocProvider.of(context);

    // Initializes controller(s), controller, and controller text(s) based on
    // which user property is being edited so widget can be reused
    switch (widget.title) 
    {
      case "Name":
        _controller = TextEditingController();
        _controller2 = TextEditingController();
        _textFields = _nameFields(_controller, _controller2);

        if(profileBloc.state.user.firstName != null) 
        {
          _controller.text = profileBloc.state.user.firstName;
        }

        // First and Last name use different controllers because of the
        // different Text Fields
        if(profileBloc.state.user.lastName != null) 
        {
          _controller2.text = profileBloc.state.user.lastName;
        }

        break;

      case "Phone":
        _controller = MaskedTextController(mask: "(000)000-0000");
        _textFields = _singleField(_controller);

        if(profileBloc.state.user.phone != null) 
        {
          _controller.text = profileBloc.state.user.phone;
        }

        break;

      default:
        _controller = TextEditingController();
        _textFields = _singleField(_controller);

        // Checks if user is editing Email or Bio because it defaults to either one
        if(widget.title == "Email" && profileBloc.state.user.email != null) 
        {
          _controller.text = profileBloc.state.user.email;
        }

        if(widget.title == "Tell us about yourself" && profileBloc.state.user.bio != null) 
        {
          _controller.text = profileBloc.state.user.bio;
        }

        break;
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(),
      body: SafeArea
      (
        child: Container
        (
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * Config.listViewPaddingPerc),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>
            [
              // Top Text Question
              _prompt(),

              // Padding Between Prompt and CustomTextField(s)
              const SizedBox
              (
                height: Config.profileEditPadding,
              ),

              // Used to populate Widget tree with either a single CustomTextField or 2 because
              // User's name has first and last name while others only needs 1
              _textFields,

              // Update Button to save Text(s)
              _updateButton(context),
            ]
          ),
        ),
      ),
    );
  }

  Widget _prompt()
  {
    return Text
    (
      widget.prompt,
      style: const TextStyle
      (
        fontSize: Config.profileEditPromptFontSize,
        fontWeight: Config.profileTileFontWeight,
        color: Config.profileEditPromptFontColor,
      ),
    );
  }

  Widget _nameFields(TextEditingController controller, TextEditingController controller2)
  {
    return Row
    (
      children: 
      [
        CustomTextField
        (
          label: widget.label, 
          controller: controller,
        ),

        const Padding
        (
          padding: EdgeInsets.symmetric(horizontal: Config.profileEditTextFieldPadding)
        ),

        CustomTextField
        (
          label: widget.label, 
          controller: controller2,
        ),
      ],
    );
  }

  Widget _singleField(TextEditingController controller)
  {
    return CustomTextField
    (
      label: widget.label, 
      controller: controller,
    );
  }

  Widget _updateButton(BuildContext context)
  {
    return BlocBuilder<ProfileBloc, ProfileState>
    (
      builder: (context, state)
      {
        // Expands Button Horizontally because it only takes up as much space as it's 
        // text/label needs 
        return Expanded
        (
          child: Baseline
          (
            baseline: Config.updateButtonBaseline,
            baselineType: TextBaseline.alphabetic,
            child: ElevatedButton
            (
              style: ElevatedButton.styleFrom
              (
                minimumSize: Size(MediaQuery.of(context).size.width, Config.updateButtonHeight),
                backgroundColor: Config.updateButtonColor,
                foregroundColor: Config.updateButtonTextColor,
                shape: const BeveledRectangleBorder(),
              ),
              onPressed: () =>_updateNav(context, state.user),
              child: const Padding
              (
                padding: EdgeInsets.all(Config.updateButtonTextPadding),
                child: Text
                (
                  "Update",
                  textAlign: TextAlign.center,
                )
              ),
            ),
          ),
        );
      }
    );
  }

  void _updateNav(BuildContext context, User user)
  {
    // Checks which field is being edited for resuability because ElevatedButton's onPressed 
    // only takes a single function
    switch (widget.title) 
    {
      case "Name":
        context.read<ProfileBloc>().add(UpdateName(_controller.text, _controller2.text));
        break;

      case "Phone":
        context.read<ProfileBloc>().add(UpdatePhone(_controller.text));
        break;

      case "Email":
        context.read<ProfileBloc>().add(UpdateEmail(_controller.text));
        break;

      case "Tell us about yourself":
        context.read<ProfileBloc>().add(UpdateBio(_controller.text));
        break;

      default: throw Exception("ProfileEditScreen's _updateNav title defaulted");
    }

    Navigator.of(context).pop();
  }

  void disposed()
  {
    _controller.dispose();
    _controller2.dispose();
  }
}