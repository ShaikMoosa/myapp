import 'package:flutter/material.dart';
import 'package:myapp/models/character.dart';
import 'package:myapp/screens/home/character_card.dart';
import 'package:myapp/shared/style_text.dart';
import 'package:myapp/shared/styled_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const StyledTitle("Your Character"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: characters.length,
                  itemBuilder: (_, index) {
                    return CharacterCard(characters[index]);
                  },
                ),
              ),
              StyledButton(
                  onPressed: () {}, child: const StyledHeading("create new")),
            ],
          ),
        ));
  }
}
