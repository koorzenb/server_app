import 'package:flutter/material.dart';

import '../models/server.dart';

class ServerItem extends StatelessWidget {
  final Function showServerDetails;

  const ServerItem(this.showServerDetails);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, // Your desired background color
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(5.0, 5.0)),
          ]),
      child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          leading: const Icon(Icons.star),
          iconColor: Theme.of(context).colorScheme.secondary,
          title: const Text("Server1"),
          subtitle: const Text("subtitle"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              color: Colors.black,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.power_settings_new),
              IconButton(
                onPressed: () => print('right chevron'),
                icon: const Icon(Icons.chevron_right),
                color: Colors.black54,
              ),
            ],
          )),
    );
  }
}
