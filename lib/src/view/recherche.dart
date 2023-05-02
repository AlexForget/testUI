import 'package:flutter/material.dart';

class RechercheView extends StatefulWidget {
  const RechercheView({super.key});

  @override
  State<RechercheView> createState() => _RechercheViewState();
}

class _RechercheViewState extends State<RechercheView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              title: Text('AppBar'),
              centerTitle: true,
            )
          ],
          body: ListView.separated(
            padding: const EdgeInsets.all(12),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: 25,
            itemBuilder: (context, index) => buildCard(index + 1),
          ),
        ),
      ),
    );
  }

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
