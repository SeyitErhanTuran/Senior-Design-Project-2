import 'package:flutter/material.dart';
import 'package:senior_project_2/colors.dart';
import 'package:senior_project_2/common/widget/custom_button.dart';
import 'package:senior_project_2/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Mesaj Uygulamasına Hoşgeldiniz",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height / 15,
            ),
            Image.asset(
              'assets/background.png',
              height: 340,
              width: 340,
            ),
            SizedBox(
              height: size.height / 15,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Gizlilik politikamızı okuyun. Hizmet Şartlarını kabul etmek için "Kabul et ve devam et"e dokunun',
                style: TextStyle(
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButton(
                text: "KABUL ET VE DEVAM ET",
                onPressed: () {
                  navigateToLoginScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
