import 'package:flutter/material.dart';

class RegistrationFormPage extends StatefulWidget {
  const RegistrationFormPage({Key? key}) : super(key: key);

  @override
  RegistrationFormPageState createState() => RegistrationFormPageState();
}

class RegistrationFormPageState extends State<RegistrationFormPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController studentidController = TextEditingController();

  List<String> selectedDepartments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
        ),
        backgroundColor: const Color.fromARGB(255, 20, 108, 149),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
          child: Column(
            children: [
              TextField(
                controller: studentidController,
                decoration: const InputDecoration(
                  labelText: 'Student ID',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              TextField(
                controller: fullNameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: dobController,
                decoration: const InputDecoration(
                  labelText: 'Level',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select your department(s):',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
              CheckboxListTile(
                title: const Text('CPEN'),
                value: selectedDepartments.contains('CPEN'),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      selectedDepartments.add('CPEN');
                    } else {
                      selectedDepartments.remove('CPEN');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('FPEN'),
                value: selectedDepartments.contains('FPEN'),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      selectedDepartments.add('FPEN');
                    } else {
                      selectedDepartments.remove('FPEN');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('AREN'),
                value: selectedDepartments.contains('AREN'),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      selectedDepartments.add('AREN');
                    } else {
                      selectedDepartments.remove('AREN');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('MTEN'),
                value: selectedDepartments.contains('MTEN'),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      selectedDepartments.add('MTEN');
                    } else {
                      selectedDepartments.remove('MTEN');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('BMEN'),
                value: selectedDepartments.contains('BMEN'),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      selectedDepartments.add('BMEN');
                    } else {
                      selectedDepartments.remove('BMEN');
                    }
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Available semester courses',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
              DropdownButton<String>(
                value: 'No Courses Available at this time',
                onChanged: (value) {},
                items: const [
                  DropdownMenuItem<String>(
                    value: 'No Courses Available at this time',
                    child: Text('No Courses Available at this time'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;
                  String fullName = fullNameController.text;
                  String dob = dobController.text;
                  String id = studentidController.text;

                  if (email.isEmpty ||
                      password.isEmpty ||
                      fullName.isEmpty ||
                      dob.isEmpty ||
                      id.isEmpty ||
                      selectedDepartments.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Please fill in all fields and select at least one department.',
                        ),
                      ),
                    );
                    return;
                  }

                  // Perform registration logic here
                  // Call Firebase registration API or your preferred authentication service
                  // to register the user with the provided data.

                  // Print the selected departments
                  print('Selected Departments: $selectedDepartments');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 20, 108, 149),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


