import 'package:coding_challenge/features/profile/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatefulWidget
{
  final String label;
  final TextEditingController controller;
  final String? initalValue;
  final TextInputType? keyboardType;

  const CustomTextField
  (
    {
      Key? key,
      required this.label,
      required this.controller,
      this.initalValue,
      this.keyboardType,
    }
  ): super(key: key);
  
  @override
  State<StatefulWidget> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField>
{
  @override
  void initState() 
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      child: 
        TextField
        (
          enabled: true,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          maxLines: null,
          decoration: InputDecoration
          (
            // Used hintText & hintStyle instead of labelText & labelStyle because
            // labelText cuts off long sentences while hintText doesn't
            // Also causes label to not show when there is something in the Text Field
            hintText: widget.label,
            hintStyle: TextStyle
            (
              fontSize: Config.textFieldLabelFontSize,
              fontWeight: FontWeight.bold,
              color: Config.textFieldLabelFontColor,
              overflow: TextOverflow.visible,
            ),
            contentPadding: const EdgeInsets.symmetric
            (
              vertical: Config.textFieldLabelPadding,
              horizontal: Config.textFieldLabelPadding,
            ),
            
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder
            (
              borderSide: BorderSide
              (
                color: Config.profileTileColor
              ),
              borderRadius: const BorderRadius.all(Radius.zero)
            )
          ),
          style: const TextStyle
          (
            fontSize: Config.textFieldTextSize,
            fontWeight: FontWeight.bold,
            color: Config.textFieldTextFontColor,
          ),
        ),
    );
  }
}