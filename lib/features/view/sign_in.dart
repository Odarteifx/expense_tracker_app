import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/core/constants/app_images.dart';
import 'package:iconsax/iconsax.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 170,
                  child: Image.asset(
                    AppImages.namelogo2,
                  )),
              Text('Spend Less. Live Wise.',
                  style:
                      TextStyle(color: AppColors.lighttextColor, fontSize: 13)),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 15,
              ),
              Form(child: Column(
                children: [
                  TextFormField(
                   decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    prefixIconColor: AppColors.lighttextColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                   ),
                  ),
                  TextFormField()
                ],
              ))
              
            ],
          ),
        ),
      ),
    );
  }
}
