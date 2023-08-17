import 'package:flutter/material.dart';

class Doctor {
  final String fullName;
  final String specialty;
  final double consultationPrice;
  final String description;
  final String phoneNumber;
  final String emailAddress;

  Doctor({
    required this.fullName,
    required this.specialty,
    required this.consultationPrice,
    required this.description,
    required this.phoneNumber,
    required this.emailAddress,
  }); 
} 
