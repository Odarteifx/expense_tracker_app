import 'package:go_router/go_router.dart';

import '../../features/view/onboarding.dart';
import '../../features/view/sign_in.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Onboarding(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => SignIn(),
    ),
  ],
);