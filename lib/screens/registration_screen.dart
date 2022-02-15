import 'package:flutter/material.dart';

class RegistrationAndExam extends StatelessWidget {
  const RegistrationAndExam({Key? key}) : super(key: key);

  static const routeName = '/registration-exam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration and Exam Day'),
      ),
      body: Hero(
        tag: 'p4',
        child: Image.network(
          'https://thumbs.dreamstime.com/z/isometric-artwork-concept-man-using-online-registration-process-isometric-artwork-concept-online-registration-where-140087932.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
