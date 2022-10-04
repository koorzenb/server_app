import 'package:flutter/material.dart';

import '../widgets/server_setting_item.dart';
import '../models/server.dart';

class ServerSettingsScreen extends StatelessWidget {
  List<Server> dummyData = [
    Server(
        id: "1",
        name: "Server1",
        url: "some.url.com",
        subtitle: "some subtitle"),
  ];

  // Server data = dummyData[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Server Settings'),
        actions: [
          IconButton(
              onPressed: () => print('delete'), icon: const Icon(Icons.delete))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServerSettingItem(
              propertyName: "Name",
              propertyValue: dummyData[0].name,
            ),
            ServerSettingItem(
              propertyName: "URL",
              propertyValue: dummyData[0].url,
            ),
            ServerSettingItem(
              propertyName: "Poll Time",
              propertyValue: dummyData[0].pollTime.toString(),
            ),
            const ServerSettingItem(
              propertyName: 'Ringtone',
              propertyValue: "Chimes",
            ),
            const ServerSettingItem(
                propertyName: "Icon", propertyValue: 'Server')
          ],
        ),
      ),
    );
  }
}
