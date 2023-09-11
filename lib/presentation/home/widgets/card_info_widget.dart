// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../common/theme.dart';

class CardInfoWidget extends StatelessWidget {
  final String image;
  final String label;
  final String info;
  final Color bgColorBegin;
  final Color bgColorEnd;

  const CardInfoWidget({
    Key? key,
    required this.image,
    required this.label,
    required this.info,
    required this.bgColorBegin,
    required this.bgColorEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 17,
        top: 19,
      ),
      height: 203,
      width: 190,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            bgColorBegin,
            bgColorEnd,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(15),
            ),
            width: 70,
            height: 70,
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            label,
            style: whiteTextStyle.copyWith(
              fontSize: 28,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "100.000 Suara",
            style: whiteTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
