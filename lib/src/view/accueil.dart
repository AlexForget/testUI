import 'package:flutter/material.dart';

class AccueilView extends StatefulWidget {
  const AccueilView({super.key});

  @override
  State<AccueilView> createState() => _AccueilViewState();
}

class _AccueilViewState extends State<AccueilView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverAppBar(
                pinned: true,
                floating: true,
                snap: true,
                title: Text('Title'),
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 5,
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Home'),
                    Tab(icon: Icon(Icons.list_alt), text: 'Feed'),
                    Tab(icon: Icon(Icons.person), text: 'Profile'),
                    Tab(icon: Icon(Icons.settings), text: 'Settings'),
                  ],
                ),
              ),
            ],
            body: TabBarView(
              children: [
                buildPage('Home page'),
                buildPage('Feed page'),
                buildPage('Profile page'),
                buildPage('Settings page'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPage(String text) => ListView.separated(
        padding: const EdgeInsets.all(12),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 25,
        itemBuilder: (context, index) => buildCard(index + 1),
      );

  Widget buildCard(int i) {
    return Card(
      child: SizedBox(
        height: 60,
        child: Center(
          child: Text('Item $i'),
        ),
      ),
    );
  }
}
