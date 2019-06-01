import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404 Error'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('404 Error, Page Not Found'),
      ),
    );
  }
}