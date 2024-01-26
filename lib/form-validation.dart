import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({
    super.key,
  });

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  String? _validateItemRequired(String value) {
    return value.isEmpty? 'Item Require' : null;
  }

  String? _validateItemCount(String value) {
    int? _valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? 'At least one Item is Required' : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState?.save();
      var order;
      print('Order Item: ${order.item}');
      print('Order Quantity: ${order.quantity}');
    } 
  }

  @override
  Widget build(BuildContext context) {
    var order;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Center(
          child: Text(
            'Form Validation',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
         
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Espresso',
                        labelText: 'Item',
                      ),
                      validator: (value) => _validateItemRequired(value!),
                      onSaved: (value) => order.item = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '3',
                        labelText: 'Quantity',
                      ),
                      validator: (value) => _validateItemCount(value!),
                      onSaved: (value) => order.
                      quantity = int.tryParse(value!),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
              onPressed: () => _submitOrder(),
            ),
          ],
        ),
      ),
    );
  }
  
  void RaisedButton({required Text child, required MaterialColor color, required void Function() onPressed}) {}
}

class Order {
  late String item;
  late int quantity;
}
