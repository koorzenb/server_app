import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ServerSettingItem extends StatelessWidget {
  final String propertyName;
  final String propertyValue;

  const ServerSettingItem({
    required this.propertyName,
    required this.propertyValue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(
        propertyName,
        style: Theme.of(context).textTheme.headline5,
      ),
      subtitle: Text(
        propertyValue,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ));
    // return Row(
    //   children: [
    //     Expanded(child: Text(propertyName)),
    //     propertyValue,
    //   ],
    // );
  }
}
