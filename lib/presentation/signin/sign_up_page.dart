import 'dart:ui';

import 'package:calegpedia_apps/common/theme.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 111,
              child: Image.asset(
                Images.signUpImage,
                width: 171,
              ),
            ),
            Positioned(
              bottom: 110,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(
                      20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: transparentBlueColor,
                    ),
                    height: 480,
                    width: 335,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        Text(
                          "Register",
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: black,
                          ),
                        ),
                        Text(
                          "Ayo Daftar Akun",
                          style: blackTextStyle.copyWith(
                            fontSize: 8,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),

                        // todo name
                        Container(
                          height: 43,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: lightBlueColor,
                              width: 2.0, // Lebar border
                            ),
                            // color: orangeColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.userIcon,
                                  color: blackColor,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    style: blackTextStyle,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Nama Lengkap',
                                      hintStyle: greyTextStyle.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        //todo email
                        Container(
                          height: 43,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: lightBlueColor,
                              width: 2.0, // Lebar border
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.mailIcon,
                                  color: blackColor,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    style: blackTextStyle,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Email',
                                      hintStyle: greyTextStyle.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        //todo password
                        Container(
                          height: 43,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: lightBlueColor,
                              width: 2.0, // Lebar border
                            ),
                            // color: orangeColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.lockIcon,
                                  color: blackColor,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    style: blackTextStyle,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Your Password',
                                      hintStyle: greyTextStyle.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        //todo confirm password
                        Container(
                          height: 43,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: lightBlueColor,
                              width: 2.0, // Lebar border
                            ),
                            // color: orangeColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.lockIcon,
                                  color: blackColor,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    style: blackTextStyle,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Your Password',
                                      hintStyle: greyTextStyle.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        //todo button sign up
                        SizedBox(
                          width: 293,
                          height: 44,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: blueColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                              ),
                            ),
                            child: Text(
                              "SIGN UP",
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sudah punya akun? ',
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Sign In',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
