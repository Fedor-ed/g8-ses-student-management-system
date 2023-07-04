import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesmis/pages/dashboard_page.dart';
import 'package:sesmis/pages/registration_form_page.dart';
import 'package:sesmis/pages/login_form_page.dart';
import 'package:sesmis/theme/theme_constants.dart';
import 'package:sesmis/theme/theme_manager.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeManager(),
      child: const MyApp(),
    ),
  );
}

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  void themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      home: const HomePage(),
      routes: {
        '/dashboard': (context) => const DashboardPage(),
        '/register': (context) => const RegistrationFormPage(),
        '/login': (context) => LoginFormPage(),
      },
    );
  }
}

ThemeManager _themeManager = ThemeManager();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'School of Engineering Sciences',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0)),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Switch(
              value: themeManager.themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                themeManager.toggleTheme(newValue);
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the University of Ghana School of Engineering Sciences',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30, width: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              child: Text(
                'Go to Dashboard',
                style: textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Register',
                style: textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Login',
                  style: textTheme.headlineSmall,
                )),
            const SizedBox(height: 30, width: 30),
          ],
        ),
      ),
    );
  }
}
