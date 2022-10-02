import 'package:flutter/material.dart';
import 'package:flutter_portfolio_hacktoberfest/YourDetails/contributers_github_username.dart';
import 'package:flutter_portfolio_hacktoberfest/YourDetails/contributors_name.dart';

import '../Animations/bottom_animation.dart';
import 'widgets/custom_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 16, 45),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 31, 16, 45),
              leading: BackButton(
                color: Colors.white,
                onPressed: () => Navigator.of(context).pop(),
              ),
              pinned: true,
              expandedHeight: 220.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text(
                  "Hacktoberfest Contributors",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'JetBrainsMono'),
                ),
                background: Center(
                  child: Image.network(
                    'https://res.cloudinary.com/practicaldev/image/fetch/s--ds97LCK---/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/ymlmr15l83rrjq8natft.jpg',
                    fit: BoxFit.cover,
                    // height: 200,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8.0),
          separatorBuilder: (context, index) =>
              const Divider(color: Colors.transparent),
          itemCount: ContributersName().contributorsName.length,
          itemBuilder: (context, index) {
            return WidgetAnimator(
              child: CustomListTile(
                contributorName: ContributersName().contributorsName[index],
                gitHubUsername: GitHubUserName().gitHubUserName[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
