import 'package:flutter/foundation.dart';

class Server {
  final String id;
  final String name;
  final String subtitle;
  final String url;

  Server({
    required this.id,
    required this.name,
    this.subtitle = 'some subtitle',
    required this.url,
  });
}
