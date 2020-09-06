import 'package:flutter/material.dart';
import 'package:beldr/Design/shared/globals.dart';
import 'package:beldr/Core/login_model.dart';
import 'package:provider/provider.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  TextFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LoginModel>(context);

    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: Global.medBlack,
      style: TextStyle(
        color: Global.medBlack,
        fontSize: 14.0,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Global.medBlack),
        focusColor: Global.medBlack,
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Global.medBlack),
        ),
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Global.medBlack,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            model.isVisible = !model.isVisible;
          },
          child: Icon(
            suffixIconData,
            size: 18,
            color: Global.medBlack,
          ),
        ),
      ),
    );
  }
}
