import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:senior_project_2/colors.dart';
import 'package:senior_project_2/common/widget/error.dart';
import 'package:senior_project_2/common/widget/loader.dart';
import 'package:senior_project_2/features/auth/controller/auth_controller.dart';
import 'package:senior_project_2/features/landing/screens/landing_screen.dart';
import 'package:senior_project_2/router.dart';
import 'package:senior_project_2/screens/mobile_layout_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Mesaj Uygulaması',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bacgroundColor,
          appBarTheme: const AppBarTheme(
              color: appBarColor, iconTheme: IconThemeData(color: blackColor))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: ref.watch(userDataAuthProvider).when(
          data: (user) {
            if (user == null) {
              return const LandingScreen();
            }
            return const MobileLayoutScreen();
          },
          error: (err, trace) {
            return ErrorScreen(
              error: err.toString(),
            );
          },
          loading: () => const Loader()),
    );
  }
}
