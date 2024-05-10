import 'package:flutter/material.dart';


class AppInput extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final bool isRequired;
  final FormFieldValidator? validator;
  final TextStyle? labelStyle;
  final TextEditingController? controller;
  final TextInputType keyBoardType;

  const AppInput(
      {Key? key,
      required this.label,
      this.hint = "",
      this.isPassword = false,
      this.isRequired = false,
      this.keyBoardType = TextInputType.text,
      this.controller,
      this.labelStyle,  this.validator})
      : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label + (widget.isRequired ? " *" : ''),
              style: widget.labelStyle ??
                  TextStyle(fontSize: 15)),
          TextFormField(
            controller: widget.controller,
            obscureText: widget.isPassword ? isHidden : false,
            validator: widget.validator,
            decoration: InputDecoration(
                hintText: widget.hint,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        child: Icon(isHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                        onTap: () {
                          isHidden = !isHidden;
                          setState(() {});
                        })
                    : null,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  borderSide: const BorderSide(width: 0, color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  borderSide: const BorderSide(width: 0, color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  borderSide: const BorderSide(width: 0, color: Colors.transparent)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  borderSide: const BorderSide(width: 0, color: Colors.transparent)),
              fillColor: const Color(0xffE6E6E6).withOpacity(.4),
              filled: true,
            ),
            keyboardType: widget.keyBoardType,

          )
        ],
      ),
    );
  }
}
