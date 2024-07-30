import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/profilepage.dart';
import 'package:learn_flutter/searchPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContentWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        items: [1, 2, 3, 4, 5].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 218, 112, 214),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "text $i",
                style: const TextStyle(fontSize: 40),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 300,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: <Widget>[
          const Center(child: Text('Home Page')),
          const Center(child: Text('Search Page')),
          const Center(child: Text('Profile Page'))
        ][currentPageIndex],
        backgroundColor: const Color.fromARGB(255, 165, 42, 160),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search_outlined),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          )
        ],
      ),
      body: <Widget>[
        MyHomePage(),
        SearchPage(),
        ProfilePage(),
      ][currentPageIndex],
    );
  }
}
