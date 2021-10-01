import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditFormFields extends StatefulWidget {
  final TextInputType? inputType;
  final String? placeholder;
  String? labelText;

  final TextEditingController? controller;
  String? Function(String?)? formValidator;

  EditFormFields({
    Key? key,
    this.inputType,
    this.placeholder,
    this.controller,
    this.formValidator,
    this.labelText,
  }) : super(key: key);

  @override
  _FieldFState createState() => _FieldFState();
}

class _FieldFState extends State<EditFormFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      child: Container(
        height: 75,
        margin: EdgeInsets.only(),
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.inputType,
          minLines: 1,
          validator: widget.formValidator,
          autofocus: false,
          decoration: InputDecoration(
              labelText: widget.labelText,
              hintText: widget.placeholder,
              // Set text upper animation
              border: OutlineInputBorder(),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
              )),
        ),
      ),
    );
  }
}

class SingleBtn extends StatelessWidget {
  final String btnName;

  dynamic submitMethod;
  SingleBtn(this.btnName, {Key? key, this.submitMethod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 3, left: 3),
        child: MaterialButton(
          height: 40,
          onPressed: submitMethod,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [new Color(0xff374ABE), new Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: 300.0,
                  minHeight: 40.0,
                  maxHeight: 55.0), // min sizes for Material buttons
              alignment: Alignment.center,
              child: Text(
                btnName,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
