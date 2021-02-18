
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  Widget _inputEmail() {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        style: TextStyle(color: greyColor, fontWeight: FontWeight.w500),
        cursorColor: greyColor,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Cari Sesuatu...',
          hintStyle: TextStyle(
              fontSize: 16, color: greyColor, fontWeight: FontWeight.w500),
          fillColor: Color(0xffEEEEEE),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return RaisedButton(
      color: purpleColor,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            'Search',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - (4 * edge),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _inputEmail(),
                SizedBox(height: 32),
                _buttonLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
