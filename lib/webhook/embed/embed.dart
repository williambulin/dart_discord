import 'embed_author.dart' as discord;
import 'embed_field.dart' as discord;
import 'embed_footer.dart' as discord;
import 'embed_image.dart' as discord;

class Embed {
  final int? color;
  final discord.EmbedAuthor? author;
  final String? title;
  final String? url;
  final String? description;
  final List<discord.EmbedField>? fields;
  final discord.EmbedImage? image;
  final discord.EmbedImage? thunmbnail;
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
    this.thunmbnail,
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
        'thunmbnail': thunmbnail,
        'footer': footer,
        'timestamp': timestamp?.toIso8601String(),
      };
}
