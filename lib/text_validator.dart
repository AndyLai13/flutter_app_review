import 'package:flutter/material.dart';

class TextValidatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: TextValidator(),
    );
  }
}

class TextValidator extends StatefulWidget {
  @override
  _TextValidatorAppState createState() => _TextValidatorAppState();
}

class _TextValidatorAppState extends State<TextValidator> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your username',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Value is empty!';
              }
              return null;
            },
          ),
          ElevatedButton(
            child: Text('Submit'),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Processing Data'),
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
