import 'package:flutter/material.dart';
import 'doctor.dart';

class AddDoctorScreen extends StatefulWidget {
  @override
  _AddDoctorScreenState createState() => _AddDoctorScreenState();
}

class _AddDoctorScreenState extends State<AddDoctorScreen> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _specialtyController = TextEditingController();
  TextEditingController _consultationPriceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Doctor'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: _specialtyController,
              decoration: InputDecoration(labelText: 'Specialty'),
            ),
            TextField(
              controller: _consultationPriceController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: 'Consultation Price'),
            ),
            TextField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            TextField(
              controller: _emailAddressController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Create a new doctor object and pass it back to the previous screen
                Doctor newDoctor = Doctor(
                  fullName: _fullNameController.text,
                  specialty: _specialtyController.text,
                  consultationPrice: double.tryParse(_consultationPriceController.text) ?? 0.0,
                  description: _descriptionController.text,
                  phoneNumber: _phoneNumberController.text,
                  emailAddress: _emailAddressController.text,
                );
                Navigator.pop(context, newDoctor);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _specialtyController.dispose();
    _consultationPriceController.dispose();
    _descriptionController.dispose();
    _phoneNumberController.dispose();
    _emailAddressController.dispose();
    super.dispose();
  }
}
