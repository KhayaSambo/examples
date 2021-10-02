import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        body: FormData());
  }
}

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter a Name';
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: 'Name')),
            TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter a Surname';
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: 'Surname')),
            TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter a Age';
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: 'Age')),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a Snackbar.
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Data is in processing.')));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
