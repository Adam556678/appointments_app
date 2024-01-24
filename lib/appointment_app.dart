import 'package:appointments/core/routing/app_router.dart';
import 'package:appointments/core/routing/routes.dart';
import 'package:appointments/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentApp extends StatelessWidget {
  final AppRouter appRouter;
  const AppointmentApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Appointments app',
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
