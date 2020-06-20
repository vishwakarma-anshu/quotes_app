import 'package:flutter/material.dart';
import 'package:flutter_quotes/screens/quotes_app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Quotes App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.red[400],
      accentColor: Colors.red[300],
      scaffoldBackgroundColor: Colors.red[50],
    ),
    // home: QuotesApp(),
    home: QuotesApp(),
  ));
}
