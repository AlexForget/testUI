import 'package:flutter/material.dart';

class BibliothequeView extends StatefulWidget {
  const BibliothequeView({super.key});

  @override
  State<BibliothequeView> createState() => _BibliothequeViewState();
}

class _BibliothequeViewState extends State<BibliothequeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Bibliotheque'),
      ),
    );
  }
}
