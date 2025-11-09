import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do/onboading/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDebugPaintEnabled = false;

  void toggleDebugPaint() {
    setState(() {
      isDebugPaintEnabled = !isDebugPaintEnabled;
      debugPaintSizeEnabled = isDebugPaintEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Your App Name',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          ),
          home: OnboardingPage(
            onFinish: () {
              // This callback is not used here, but in OnboardingPage
            },
          ),
        );
      },
    );
  }
}

class DebugPaintWrapper extends StatelessWidget {
  final bool isDebugPaintEnabled;
  final VoidCallback toggleDebugPaint;
  final Widget child;

  const DebugPaintWrapper({
    super.key,
    required this.isDebugPaintEnabled,
    required this.toggleDebugPaint,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        // Debug paint toggle button that appears on all screens
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: Icon(
                isDebugPaintEnabled
                    ? Icons.bug_report
                    : Icons.bug_report_outlined,
                color: isDebugPaintEnabled ? Colors.red : Colors.white,
              ),
              onPressed: toggleDebugPaint,
              tooltip: 'Toggle Debug Paint',
            ),
          ),
        ),
      ],
    );
  }
}
