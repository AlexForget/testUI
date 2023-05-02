import 'package:flutter/material.dart';
import 'package:test_ui/src/view/accueil.dart';
import 'package:test_ui/src/view/bibliotheque.dart';
import 'package:test_ui/src/view/recherche.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;
  final List<Widget> views = [
    const AccueilView(),
    const RechercheView(),
    const BibliothequeView(),
  ];

  final List<String> titleBar = [
    'Accueil',
    'Recherche',
    'Bibliotheque',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: views,
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Recherche',
          ),
          NavigationDestination(
            icon: Icon(Icons.library_books),
            label: 'Bibliotheque',
          ),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
