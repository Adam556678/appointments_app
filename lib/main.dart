import 'package:appointments/appointment_app.dart';
import 'package:appointments/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppointmentApp(
    appRouter: AppRouter(),
  ));
}
