import 'package:flutter/material.dart';

class ServerItem extends StatelessWidget {
  final Function showServerDetails;

  const ServerItem(this.showServerDetails);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
          leading: const Icon(Icons.star),
          iconColor: Theme.of(context).colorScheme.secondary,
          title: const Text("Server1"),
          subtitle: const Text("subtitle"),
          trailing: IconButton(
            onPressed: () => showServerDetails(),
            icon: const Icon(Icons.chevron_right),
          )),
    );
  }
}
