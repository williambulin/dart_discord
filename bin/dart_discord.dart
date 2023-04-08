import 'package:dart_discord/dart_discord.dart' as discord;

void main() async {
  final webhook = discord.Webhook('https://discord.com/api/webhooks/1094202743385751612/pjbKNRkVzoWODKhtnm8ARunxWwFfNI2B-if0O1OrKZ12DAQwPCSnxv9DaNvFgn5SRTYv');

  final webhookResult = await webhook.send(
    discord.WebhookMessage(
      username: 'forsen',
      avatarUrl: 'https://static-cdn.jtvnw.net/emoticons/v1/521050/3.0',
      content: '@everyone forsenE',
      tts: true,
      embeds: [
        discord.Embed(
          image: discord.EmbedImage(url: 'https://static-cdn.jtvnw.net/emoticons/v1/521050/3.0'),
          title: 'forsen is live!',
          url: 'https://twitch.tv/forsen',
          fields: [
            discord.EmbedField(
              name: 'Minecraft Run Count',
              value: '69420th',
              inline: true,
            ),
            discord.EmbedField(
              name: 'Viewers',
              value: '28,234',
            ),
          ],
          color: 65280,
          timestamp: DateTime.now().toUtc(),
        ),
      ],
    ),
  );

  print(webhookResult);
}
