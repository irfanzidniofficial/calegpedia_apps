// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:calegpedia_apps/common/theme.dart';
import 'package:calegpedia_apps/utils/images.dart';

class SympathizerPage extends StatelessWidget {
  const SympathizerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 13,
            ),
            child: Text(
              "Data Simpatisan",
              style: darkBlueTextStyle.copyWith(
                fontSize: 30,
                fontWeight: bold,
              ),
            ),
          ),
          scanKtp(),
          const SizedBox(
            height: 20,
          ),
          const ListDataWidget(
            title: 'Daftar\nSimpatisan',
            image: Images.simpatisanImage,
            bgColor: Color(0xFFE7FEBA),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListDataWidget(
            title: 'Daftar\nRelawan',
            image: Images.relawanImage,
            bgColor: Color(0xFFFEEFBA),
          ),
        ],
      ),
    );
  }

  Container scanKtp() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: toscaColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset(Images.ktpImage),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Scan KTP",
            style: darkBlueTextStyle.copyWith(
              fontSize: 25,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Verifikasi data dengan mudah dengan scan Ktp",
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          )
        ],
      ),
    );
  }
}

class ListDataWidget extends StatelessWidget {
  final String title;
  final String image;
  final Color bgColor;
  const ListDataWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: darkBlueTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Buka Daftar",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: blackColor,
                  )
                ],
              )
            ],
          ),
          Image.asset(
            image,
            scale: 0.8,
          ),
        ],
      ),
    );
  }
}
