import 'EmbedAuthor.dart' as discord;
import 'EmbedField.dart' as discord;
import 'EmbedFooter.dart' as discord;
import 'EmbedImage.dart' as discord;

class Embed {
  final int? color;
  final discord.EmbedAuthor? author;
  final String? title;
  final String? url;
  final String? description;
  final List<discord.EmbedField>? fields;
  final discord.EmbedImage? image;
  final discord.EmbedImage? thumbnail;
  final discord.EmbedFooter? footer;
  final DateTime? timestamp;

  Embed({
    this.color,
    this.author,
    this.title,
    this.url,
    this.description,
    this.fields,
    this.image,
    this.thumbnail,
    this.footer,
    this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'color': color,
        'author': author,
        'title': title,
        'url': url,
        'description': description,
        'fields': fields,
        'image': image,
        'thumbnail': thumbnail,
        'footer': footer,
        'timestamp': timestamp?.toIso8601String(),
      };
}
