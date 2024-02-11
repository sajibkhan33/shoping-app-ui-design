import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Form Validation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'this field cant be empty';
                  } else if (value.length < 5) {
                    return 'enter your full name';
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'this field cant be empty';
                  } else if (value.length < 6) {
                    return 'enter correct password';
                  } else {
                    return null;
                  }
                },
              ),
              Divider(color: Colors.transparent),
              SizedBox(
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    if(_formKey.currentState!.validate()){
                      print('validation successfull');
                    }else{
                      print('failed');
                    }
                  }, child: Text('login')))
            ],
          ),
        ),
      ),
    );
  }
}
