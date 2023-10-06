import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Button extends StatelessWidget {
  final String link;
  final String icon;

  const Button({
    super.key,
    required this.link,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () async {
          final Uri url = Uri.parse(link);

          await launchUrl(url);
        },
        icon: SvgPicture.string(
          icon,
          height: 30,
        ),
      ),
    );
  }
}
