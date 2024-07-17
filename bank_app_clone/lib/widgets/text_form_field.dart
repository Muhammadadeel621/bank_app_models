import 'package:flutter/material.dart';
import 'package:bank_app_clone/constants/colors.dart';

class CustomtextFormField extends StatefulWidget {
  const CustomtextFormField({
    Key? key,
    required this.hinttextt,
    this.textFieldIcon,
    this.textFieldIConn,
    this.obscureText = false,
    this.fontweightt,
  }) : super(key: key);

  final bool obscureText;
  final String hinttextt;
  final Icon? textFieldIcon;
  final Widget? textFieldIConn;
  final FontWeight? fontweightt;

  @override
  _CustomtextFormFieldState createState() => _CustomtextFormFieldState();
}

class _CustomtextFormFieldState extends State<CustomtextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.textfieldborder)),
      ),
      child: TextFormField(
        obscureText: _obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: widget.hinttextt,
          hintStyle: TextStyle(
              color: AppColors.textColor, fontWeight: widget.fontweightt),
          prefixIcon: Container(
            child: widget.textFieldIcon,
          ),
          suffixIcon: widget.textFieldIConn != null
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: widget.textFieldIConn,
                )
              : null,
        ),
      ),
    );
  }
}
