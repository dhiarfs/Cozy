import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Ini Halaman Profile',
            style: blackTextStyle.copyWith(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
