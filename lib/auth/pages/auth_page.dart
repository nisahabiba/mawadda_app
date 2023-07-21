import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mawadda_app/auth/pages/login_page.dart';
import 'package:mawadda_app/auth/pages/register_page.dart';
import 'package:mawadda_app/core/navigation/bloc/navigation_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/di/injector.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NavigationBloc>(),
      child: Container(
        color: const Color(0XFFFFD4AB),
        padding: EdgeInsets.only(
          top: 20.r,
          left: 16.r,
          right: 16.r,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/front_card.svg'),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 36.h,
                width: 169.w,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Color(791624)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 36.h,
                width: 169.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff791624)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
