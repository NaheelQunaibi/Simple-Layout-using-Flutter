import 'package:flutter/material.dart';
import 'package:simple_layout/models/setting.dart';
import 'package:simple_layout/widgets/menu_icon.dart';
import 'package:simple_layout/widgets/stats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<SettingData> settings = [
    SettingData(
      Icons.location_on,
      Colors.purple,
      "Address",
      "Ensure your harvesting address",
    ),
    SettingData(Icons.lock, Colors.pink, "Privacy", "System permission change"),
    SettingData(
      Icons.diamond,
      Colors.orange,
      "General",
      "Basic functional settings",
    ),
    SettingData(
      Icons.notifications,
      Colors.teal,
      "Notification",
      "Take over the news in time",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 234, 234),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Center',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: const Color(0xFF1A1A1A),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/profile_image.png',
                            ),
                          ),

                          SizedBox(width: 20),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Naheel Qunaibi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: const Color.fromARGB(
                                        255,
                                        239,
                                        231,
                                        231,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  const Icon(
                                    Icons.edit_note,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              Text(
                                'A trendsetter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stats(
                            number: "846",
                            numberColor: Colors.white,
                            statsName: "Collect",
                            statsColor: Colors.white70,
                          ),
                          Stats(
                            number: "51",
                            numberColor: Colors.white,
                            statsName: "Attention",
                            statsColor: Colors.white70,
                          ),
                          Stats(
                            number: "267",
                            numberColor: Colors.white,
                            statsName: "Track",
                            statsColor: Colors.white70,
                          ),
                          Stats(
                            number: "39",
                            numberColor: Colors.white,
                            statsName: "Coupons",
                            statsColor: Colors.white70,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    MenuIcon(
                      icon: Icons.account_balance_wallet,
                      label: "Wallet",
                    ),
                    MenuIcon(icon: Icons.local_shipping, label: "Delivery"),
                    MenuIcon(icon: Icons.chat_bubble, label: "Message"),
                    MenuIcon(icon: Icons.monetization_on, label: "Service"),
                  ],
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: settings.length,
                  itemBuilder: (context, index) {
                    return SettingsItem(data: settings[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
