import 'package:flutter/material.dart';

import '../../common/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile",
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://picsum.photos/200",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Profile Relawan",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  "Nama",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Alamat",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "No Telepon",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Email",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Tanggal Lahir",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Jenis Kelamin",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Pekerjaan",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Pengelaman Politik",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                ),
                shape: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: greyColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
