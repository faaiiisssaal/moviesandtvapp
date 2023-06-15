// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class onboarding1 extends StatelessWidget {
  const onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello, User"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
