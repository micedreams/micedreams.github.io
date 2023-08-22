import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  final String name;
  final String link;
  final String gitHubLink;

  const ProjectWidget({
    super.key,
    required this.name,
    required this.link,
    required this.gitHubLink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () async {
            final Uri url = Uri.parse(link);

            await launchUrl(url);
          },
          child: Text(
            name,
            style: TextStyle(
              fontSize: 14,
              decoration: "" == link ? null : TextDecoration.underline,
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final Uri url = Uri.parse(gitHubLink);

            await launchUrl(url);
          },
          child: const Text(
            "project",
            style: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
