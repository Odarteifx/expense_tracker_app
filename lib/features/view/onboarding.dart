import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        GoRouter.of(context).push('/sign-in');
      }
    });
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Image.asset('assets/images/spendwiselogo2.png'),
      ),
    );
  }
}