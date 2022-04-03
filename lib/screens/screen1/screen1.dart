import 'package:flutter/material.dart';
import 'package:interview_app/constants/app_styles.dart';

import 'wigets/name_text_field.dart';
import 'wigets/next_screen_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Screen 1',
          style: AppStyles.title,
        ),
      ),
      body: SingleChildScrollView(
        // Set reverse=true to make view scrolling up when keyboard showing
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SizedBox(height: 8),
              Text(
                'Enter your name',
                style: AppStyles.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 164),
              NameTextField(),
              SizedBox(height: 48),
              NextScreenButton()
            ],
          ),
        ),
      ),
    );
  }
}
