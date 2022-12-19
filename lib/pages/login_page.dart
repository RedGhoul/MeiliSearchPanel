import 'package:flutter/material.dart';
import 'package:meilisearchpanel/pages/search_page.dart';

import '../main.dart';
import '../utils/utils.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key,});
  final _formKey = GlobalKey<FormState>();
  final _urlController = TextEditingController();
  final _passwordController = TextEditingController();

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
                      Utils.showAlertDialog(context,
                          (){
                            Navigator.of(context).pop();
                          });
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
