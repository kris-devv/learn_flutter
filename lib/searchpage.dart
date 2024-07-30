import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 120, 31, 116),
                    width: 1,
                  ),
                )),
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
        Expanded(
            child: ListView(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16, vertical: 8),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 218, 112, 214),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(1, 2),
                      )
                    ]),
                child: const Center(child: Text("Entry A")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 218, 112, 214),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(1, 2),
                      )
                    ]),
                child: const Center(child: Text("Entry B")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 218, 112, 214),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(1, 2),
                      )
                    ]),
                child: const Center(child: Text("Entry C")),
              ),
            )
          ],
        ))
      ],
    );
  }
}
