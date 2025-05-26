import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/core/constants/app_images.dart';
import 'package:iconsax/iconsax.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              SizedBox(
                  width: 60,
                  child: Image.asset(
                    AppImages.logo,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey[400]!,
                      ),
                      prefixIcon: Icon(Iconsax.sms),
                      prefixIconColor: Colors.grey[400]!,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400]!,
                      ),
                      prefixIcon: Icon(Iconsax.lock),
                      prefixIconColor: Colors.grey[400]!,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MajorButton(buttonText: 'Sign In', function: () {})
                ],
              )),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  const Expanded(child: Divider())
                ],
              ),
              SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: AppColors.backgroundColor,
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey)
                      )),
                      child: Text('Sign In with Google', style: TextStyle(color: Colors.black),)))
            ],
          ),
        ),
      ),
    );
  }
}

class MajorButton extends StatelessWidget {
  const MajorButton(
      {super.key, required this.buttonText, required this.function});

  final String buttonText;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey[300]!)),
            backgroundColor: AppColors.primaryColor),
        onPressed: function,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
