import 'package:flutter/material.dart';

class Server {
  final String id;
  final String name;
  final String subtitle;
  final String url;
  int pollTime;
  String channel; //String?
  Icon icon;

  // String get serverName() {
  //   return name;
  // }

  Server({
    required this.id,
    required this.name,
    this.subtitle = 'some subtitle',
    required this.url,
    this.pollTime = 30,
    this.channel = 'some channel',
    this.icon = const Icon(Icons.abc),
  });
}
