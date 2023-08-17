import 'package:flutter/material.dart';
import 'add_doctor_screen.dart';
import 'doctor.dart';

void main() {
  runApp(DoctorApp());
}

class DoctorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddDoctorScreen(),
              ),
            );

            if (result != null && result is Doctor) {
              // Process the new doctor details
              print('New Doctor: ${result.fullName}');
            }
          },
          child: Text('Add Doctor'),
        ),
      ),
    );
  }
}
