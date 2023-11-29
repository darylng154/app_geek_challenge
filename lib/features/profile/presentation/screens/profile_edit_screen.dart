import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:coding_challenge/features/profile/Config.dart';
import 'package:coding_challenge/features/profile/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatelessWidget
{
  final _controller = TextEditingController();
  // final _controller = MaskedTextController(mask: "(000)000-0000");

  final String prompt;
  final String label;

  ProfileEditScreen
  (
    {
      Key? key,
      required this.prompt,
      required this.label,
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
        child: Container
        (
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * Config.listViewPaddingPerc),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>
            [
              _prompt(),

              const SizedBox
              (
                height: Config.profileEditPadding,
              ),

              _otherFields(_controller),

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
      prompt,
      style: const TextStyle
      (
        fontSize: Config.profileEditPromptFontSize,
        fontWeight: Config.profileTileFontWeight,
        color: Config.profileEditPromptFontColor,
      ),
    );
  }

  Widget _nameFields()
  {
    return const Placeholder(); 
  }

  Widget _otherFields(TextEditingController controller)
  {
    return CustomTextField
    (
      label: label, 
      controller: controller,
    );
  }

  Widget _updateButton(BuildContext context)
  {
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
          onPressed: () =>_updateNav(context),
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

  void _updateNav(BuildContext context)
  {
    return Navigator.of(context).pop();
  }

  void disposed()
  {
    _controller.dispose();
    // _phoneController.dispose();
  }
}