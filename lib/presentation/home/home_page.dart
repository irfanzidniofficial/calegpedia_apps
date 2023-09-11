import 'package:calegpedia_apps/common/theme.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';
import 'widgets/card_info_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        title: Text(
          "Dashboard",
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
        centerTitle: true,
        leadingWidth: 70,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: lighGreyColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  Images.dashboardIcon,
                  width: 21,
                ),
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: lighGreyColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                Images.notificationIcon,
                width: 21,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 12),
            child: Text(
              "Strategi\nPemenangan",
              style: blackTextStyle.copyWith(
                fontSize: 25,
                fontWeight: bold,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 20,
                ),
                CardInfoWidget(
                  image: Images.voteTargetImage,
                  info: '100.000 Suara',
                  label: 'Target\nSuara',
                  bgColorBegin: Color(0xFF62DBFE),
                  bgColorEnd: Color(0xFF44B5F6),
                ),
                SizedBox(
                  width: 18,
                ),
                CardInfoWidget(
                  image: Images.relawanImage,
                  info: '100.000 Suara',
                  label: 'Jumlah\nRelawan',
                  bgColorBegin: Color(0xFFFB81A6),
                  bgColorEnd: Color(0xFFEA4678),
                ),
                SizedBox(
                  width: 18,
                ),
                CardInfoWidget(
                  image: Images.simpatisanImage,
                  info: '100.000 Suara',
                  label: 'Jumlah\nSimpatisan',
                  bgColorBegin: Color(0xFFFDAD75),
                  bgColorEnd: Color(0xFFF8802A),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 12),
            child: Text(
              "Lainnya",
              style: blackTextStyle.copyWith(
                fontSize: 25,
                fontWeight: bold,
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.only(top: 5, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              leading: Image.asset(
                Images.demografiImage,
              ),
              title: Text(
                "Demografi",
                style: blueTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
              subtitle: Text(
                "Informasi tentang si pemilih\n(usia, pekerjaan, agama, dll)",
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            padding: const EdgeInsets.only(top: 5, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              leading: Image.asset(
                Images.dataDapilImage,
              ),
              title: Text(
                "Data Dapil",
                style: orangeTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
              subtitle: Text(
                "Informasi tentang pembagian wilayah \n(pemilihan yang tersedia di setiap wilayah)",
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
