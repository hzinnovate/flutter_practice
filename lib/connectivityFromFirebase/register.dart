import "package:flutter/material.dart";

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter your username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter your email',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter your password',
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
