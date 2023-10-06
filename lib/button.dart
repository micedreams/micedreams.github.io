import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Button extends StatelessWidget {
  final String link;

  final String name;
  final String icon;

  const Button({
    super.key,
    required this.link,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          final Uri url = Uri.parse(link);

          await launchUrl(url);
        },
        icon: Padding(
          padding: const EdgeInsets.all(2.0),
          child: SvgPicture.string(
            icon,
            height: 30,
          ),
        ),
        
      ),
    );
  }
}
