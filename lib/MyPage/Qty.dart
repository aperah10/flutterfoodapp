import 'package:flutter/material.dart';

class QtyField extends StatefulWidget {
  QtyField({Key? key}) : super(key: key);

  @override
  _QtyFieldState createState() => _QtyFieldState();
}

class _QtyFieldState extends State<QtyField> {
  final _form = GlobalKey<FormState>();
  var items = ['1', '2', '3', 'more'];
  final qtyController = TextEditingController();

  _qtyBtn() async {
    var isvalid = _form.currentState!.validate();
    if (!isvalid) {
      return "Enter the Correct Value";
    }
    _form.currentState!.save();
    if (isvalid == true) {
      print('saved ${qtyController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          child: Form(
            key: _form,
            child: Column(
              children: [
                TextFormField(
                    controller: qtyController,
                    decoration: InputDecoration(
                      labelText: 'Qty',
                      suffixIcon: PopupMenuButton(
                        initialValue: 1.toString(),
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String? value) {
                          setState(() {
                            qtyController.text = value!;
                          });
                          if (value == 'more') {
                            qtyController.clear();
                          }
                        },
                        itemBuilder: (BuildContext context) {
                          return items.map((var value) {
                            return new PopupMenuItem(
                                child: new Text(value.toString()),
                                value: value);
                          }).toList();
                        },
                      ),
                    )),

                // 1 BTN
                InkWell(onTap: _qtyBtn, child: Text('save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
