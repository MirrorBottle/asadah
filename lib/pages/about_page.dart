import 'package:asadah/components/button_component.dart';
import 'package:asadah/pages/input_akad_page.dart';
import 'package:asadah/styles.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/self.jpg'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bayu Setiawan",
                        style: Styles.textHeadingStyle.copyWith(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "082353165184",
                      style: Styles.text.copyWith(
                          color: const Color(0xFFEEEEEE),
                          fontSize: 18,
                          height: .5),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Akad Terbaru",
                  style: Styles.textBodyHeadingStyle,
                ),
                ...[
                  {"label": "NIM", "value": "2109106026"},
                  {"label": "Kelas", "value": "Informatika A'21 A2"},
                  {"label": "Website", "value": "bayusetiawan.my.id"}
                ].map((data) => ListTile(
                  leading: Text(data['label']!, style: Styles.textLabel),
                  contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  trailing: Text(data['value']!,
                      style:
                          Styles.textLabel.copyWith(color: Color(0xFF555555))),
                )).toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
