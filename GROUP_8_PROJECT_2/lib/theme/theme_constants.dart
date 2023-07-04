import 'package:flutter/material.dart';




const colorPrimary = Colors.lightBlue;
const colorAccent = Colors.blueAccent;
const colorPrimaryDark = Colors.blueGrey;
const colorAccentDark = Colors.black;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: colorPrimary,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding : MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      backgroundColor: MaterialStateProperty.all<Color>(colorAccent),

    )

  ),
  textTheme : const TextTheme(
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ), 
    headlineMedium: TextStyle(
      fontSize: 25,
      fontFamily: 'Montserrat-Thin',
      //light font weight
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      color: Colors.black
    ),

    

  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: colorAccent)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: colorAccent)
    )
  ), 
  appBarTheme: const AppBarTheme(
    backgroundColor: colorPrimary,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold
    )
  ),

);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: colorPrimaryDark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding : MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      backgroundColor: MaterialStateProperty.all<Color>(colorAccentDark)

    )

  ),
  textTheme : const TextTheme(
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ), 
    headlineMedium: TextStyle(
      fontSize: 25,
      fontFamily: 'Montserrat-Thin',
      //light font weight
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      color: Colors.white
    ),

    

  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: colorAccentDark)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: colorAccentDark)
    )
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: colorPrimaryDark,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold
    )
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all<Color>(Colors.grey),
    trackColor: MaterialStateProperty.all<Color>(colorAccentDark),
    overlayColor: MaterialStateProperty.all<Color>(colorAccentDark.withOpacity(0.2)),
    splashRadius: 20
  )

  
);