import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  String what;
  String exmpl;
  bool pass;
  var cont;
  var validator;
  TextInputField(this.what, this.exmpl, this.cont, this.pass, this.validator);
  @override
  _TextEditorState createState() =>
      _TextEditorState(what, exmpl, cont, pass, validator);
}

var passwordVisible = true;

class _TextEditorState extends State<TextInputField> {
  String what;
  String exmpl;
  bool pass;
  var validator;
  var cont;
  bool _changed = false;
  _TextEditorState(this.what, this.exmpl, this.cont, this.pass, this.validator);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: cont,
      builder: (context, TextEditingValue value, __) {
        return TextField(
          controller: cont,
          onChanged: (_) {
            setState(() {
              _changed = true;
            });
            setState(() {});
          },
          keyboardType: TextInputType.text,
          // onSubmitted: (value) {
          //   setState(() {
          //     name = value;
          //   });
          // },
          obscureText: passwordVisible && pass,
          decoration: InputDecoration(
            labelText: what,
            errorText: _changed ? validator() : null,
            labelStyle: const TextStyle(
              color: Color(0xff405cd2),
              fontSize: 17.0,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(
                color: Color(0xff405cd2),
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(
                color: Color(0xff405cd2),
                width: 2.0,
              ),
            ),
            hintStyle: const TextStyle(
              color: Color(0xff405cd2),
              fontSize: 14.0,
            ),
            hintText: exmpl,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(
                color: Color(0xff405cd2),
                width: 2.0,
              ),
            ),
            contentPadding: const EdgeInsets.all(8.0),
            suffixIcon: ((pass)
                ? IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  )
                : null),
          ),
        );
      },
    );
  }
}
