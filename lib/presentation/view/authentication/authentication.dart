import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/routers/routes.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  CustomText(
                      text: "Welcome back to the admin panel.",
                      color: AppColors.colorGrey),
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const CustomText(text: "Remeber Me"),
                    ],
                  ),
                  const CustomText(
                      text: "Forgot password?", color: AppColors.primaryColor)
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () => Get.offAllNamed(overviewPageRoute),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const CustomText(text: "Login", color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(text: "Do not have admin credentials? "),
                TextSpan(
                    text: "Request Credentials! ",
                    style: TextStyle(color: AppColors.primaryColor))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
