import 'dart:convert';

import 'package:http/http.dart' as http;

import 'webhook_message.dart' as discord;

class Webhook {
  final String url;

  Webhook(this.url);

  Future<Map<String, dynamic>?> send(discord.WebhookMessage message) async {
    final request = await http.post(
      Uri.parse(url),
      body: jsonEncode(message.toJson()),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (request.bodyBytes.isEmpty) return null;
    return jsonDecode(utf8.decode(request.bodyBytes));
  }
}
