import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomListTile extends StatefulWidget {
  final String contributorName;
  final String gitHubUsername;
  const CustomListTile(
      {super.key, required this.gitHubUsername, required this.contributorName});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isErrorOccured = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 4.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/${widget.gitHubUsername}'),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  widget.contributorName,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontFamily: 'JetBrainsMono',
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 31, 16, 45),
                ),
                onPressed: () {
                  launchUrl(
                      Uri.parse('https://github.com/${widget.gitHubUsername}'));
                },
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(FontAwesomeIcons.github),
              const SizedBox(width: 7),
              Text(
                widget.gitHubUsername,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'JetBrainsMono',
                ),
              ),
              const SizedBox(width: 5),
            ],
          )
        ],
      ),
    );
  }
}
