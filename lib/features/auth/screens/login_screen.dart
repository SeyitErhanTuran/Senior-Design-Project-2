import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:senior_project_2/colors.dart';
import 'package:senior_project_2/common/utils/utils.dart';
import 'package:senior_project_2/common/widget/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:senior_project_2/features/auth/controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        useSafeArea: true,
        countryListTheme: CountryListThemeData(backgroundColor: bacgroundColor),
        showPhoneCode: true,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
    } else {
      showSnackBar(context: context, content: 'Bütün alanları doldurunuz.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Telefon numaranızı giriniz.',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: bacgroundColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Telefon numaranı doğrulamanız gerekiyor."),
              const SizedBox(
                height: 10,
              ),
              TextButton(onPressed: pickCountry, child: Text('Ülkeni Seç')),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  if (country != null) Text('+${country!.phoneCode}'),
                  SizedBox(
                    height: 10,
                    width: size.width * 0.03,
                  ),
                  SizedBox(
                    width: size.width * 0.7,
                    child: TextField(
                      controller: phoneController,
                      decoration:
                          const InputDecoration(hintText: 'Telefon Numarası'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.6,
              ),
              SizedBox(
                width: 90,
                child: CustomButton(
                  text: 'İleri',
                  onPressed: sendPhoneNumber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
