import 'dart:ui';

import 'package:calegpedia_apps/bloc/auth/auth_bloc.dart';
import 'package:calegpedia_apps/common/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/images.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 147,
              child: Image.asset(
                Images.signInImage,
                width: 181,
              ),
            ),
            Positioned(
              bottom: 150,
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
                      border: Border.all(
                        width: 1.2,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: transparentBlueColor,
                    ),
                    height: 372,
                    width: 334,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        Text(
                          "Login",
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: black,
                          ),
                        ),
                        Text(
                          "Masuk ke akun anda",
                          style: blackTextStyle.copyWith(
                            fontSize: 8,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        // todo email
                        Container(
                          height: 50,
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
                                  Images.mailIcon,
                                  color: blackColor,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: emailController,
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
                        // todo password
                        Container(
                          height: 50,
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
                                    controller: passwordController,
                                    obscureText: true,
                                    style: blackTextStyle,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Password',
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
                          height: 31,
                        ),

                        // todo button sign in
                        SizedBox(
                          width: 293,
                          height: 44,
                          child: BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              if (state is AuthSuccesState) {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/home', (route) => false);
                              } else if (state is AuthErrorState) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text(state.error),
                                  ),
                                );
                              }
                            },
                            builder: (context, state) {
                              if (state is AuthLoadingState) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return TextButton(
                                onPressed: () {
                                  // Navigator.pushNamed(context, '/home');
                                  context.read<AuthBloc>().add(AuthSignInEvent(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      ));
                                  // print(object)
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: blueColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "SIGN IN",
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Belum punya akun? ',
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/sign-up');
                              },
                              child: Text(
                                'Sign Up',
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
