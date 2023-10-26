import 'package:flutter/material.dart';

class WriteTextFormField extends StatelessWidget {
  const WriteTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "제목",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
