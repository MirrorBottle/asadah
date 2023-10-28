import 'package:asadah/pages/notification_page.dart';
import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  String title;
  String desc;
  IconData icon;
  var onTap;
  SettingTile(
      {super.key,
      required this.title,
      required this.desc,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      leading: Icon(
        icon,
        size: 32,
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text(desc, style: Theme.of(context).textTheme.bodySmall),
      trailing: Icon(
        Icons.chevron_right,
        size: 32,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Future<dynamic> _handleAboutTap() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Tentang"),
            content: const SizedBox(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Versi: 1.0.0",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5,),
                  Text("Asadah merupakan sebuah aplikasi untuk melakukan pengajuan akad secara online oleh Asadah Gadai Syariah.")
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              ),
            ],
          );
        });
  }

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
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Theme.of(context).colorScheme.primary),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/self.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bayu Setiawan",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "082353165184",
                      style: TextStyle(
                          color: Color(0xFFEEEEEE), fontSize: 18, height: .5),
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
                  "Data Diri",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                ...[
                  {"label": "NIM", "value": "2109106026"},
                  {"label": "Kelas", "value": "Informatika A'21 A2"},
                  {"label": "Website", "value": "bayusetiawan.my.id"}
                ]
                    .map((data) => ListTile(
                          leading: Text(data['label']!,
                              style: Theme.of(context).textTheme.bodySmall),
                          contentPadding:
                              const EdgeInsets.only(left: 0.0, right: 0.0),
                          trailing: Text(data['value']!,
                              style: Theme.of(context).textTheme.bodySmall),
                        ))
                    .toList(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Pengaturan",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                SettingTile(
                    title: "Notifikasi",
                    desc: "Atur Notifikasi Aplikasi",
                    icon: Icons.notifications,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationPage()),
                      );
                    }),
                SettingTile(
                    title: "Tentang",
                    desc: "Tentang Aplikasi dan Versi",
                    icon: Icons.help,
                    onTap: _handleAboutTap),
              ],
            ),
          )
        ],
      ),
    );
  }
}
