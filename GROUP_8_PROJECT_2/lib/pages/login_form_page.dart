import 'package:flutter/material.dart';

class LoginFormPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginFormPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(fontFamily: 'Montserrat', fontSize: 30, fontWeight: FontWeight.bold , color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.center,),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 38, 89, 121),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20, width: 20),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;
                if (email.isEmpty || password.isEmpty) {
                  // Show an error message using SnackBar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please fill in all fields.'),
                    ),
                  );
                  return;
                }
                // Perform login logic here

                // Call Firebase login API or your preferred authentication service
                // to authenticate the user with the provided email and password.
              },
              
              child: const Text('Login', style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold , color: Color.fromARGB(255, 255, 255, 255)), textAlign: TextAlign.center,),
              

            ),
          ],
        ),
      ),
    );
  }
}
