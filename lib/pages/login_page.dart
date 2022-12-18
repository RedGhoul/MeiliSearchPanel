import 'package:flutter/material.dart';
import 'package:meilisearchpanel/pages/search_page.dart';

import '../main.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _urlController = TextEditingController();
  final _passwordController = TextEditingController();

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: const Text("Url or Password was not entered"),
          actions: [
            TextButton(
              child: const Text("Return"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MeiliSearch Panel"),
      ),
      body: Container(
        color: Theme.of(context).secondaryHeaderColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: _urlController,
                    decoration: const InputDecoration(
                      hintText: "Enter Meili Search URL",
                      labelText: "Meili Search URL"
                    ),
                    validator: (value) {
                      if (value == null && value!.isEmpty && !Uri.parse(value!).isAbsolute) {
                        return 'Please enter a url';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SearchPage(url: _urlController.value.text, password: _passwordController.value.text);
                          }));
                    }else{
                      showAlertDialog(context);
                    }

                  }, child: const Text("Sign In"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
