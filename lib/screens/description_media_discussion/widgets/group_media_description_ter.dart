import 'package:flutter/material.dart';

import '../../../model/Description_ter.dart';

class GroupMediaDescriptionSuitWidget extends StatefulWidget {
  const GroupMediaDescriptionSuitWidget({super.key});

  @override
  _GroupMediaDescriptionSuitWidgetState createState() => _GroupMediaDescriptionSuitWidgetState();
}

class _GroupMediaDescriptionSuitWidgetState extends State<GroupMediaDescriptionSuitWidget> {
  late final GroupMediaDescriptionSuitModel _model;

  @override
  void initState() {
    super.initState();
    _model = GroupMediaDescriptionSuitModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Default text style
                  children: <TextSpan>[
                    TextSpan(text: 'Statut : ', style: TextStyle(color: Colors.black)),
                    TextSpan(text: 'Fermé', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text('Éditeur : Nom Admin', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 20),
              Text('Intéressé : Hello World', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 20),
              Text('Sujet : Hello World', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 20),
              Text('Description:', style: Theme.of(context).textTheme.titleMedium),
              Container(
                constraints: const BoxConstraints(
                  minWidth: 200, // Minimum width of the TextField
                  minHeight: 40, // Minimum height of the TextField
                ),
                child: TextField(
                  controller: TextEditingController(text: 'This application module manages user interactions and displays critical status information. It facilitates administrative oversight and user engagement by providing up-to-date details on the status, editor, and subject matters. Users can view but not edit the displayed content, ensuring data integrity and consistency across sessions.'),
                  readOnly: true,
                  maxLines: null,  // Allows the text field to expand vertically based on content
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(), // Add a border
                    contentPadding: EdgeInsets.all(8), // Padding inside the text field
                  ),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 20),
              Text('Résumé:', style: Theme.of(context).textTheme.titleMedium),
              Container(
                constraints: const BoxConstraints(
                  minWidth: 200, // Minimum width of the TextField
                  minHeight: 40, // Minimum height of the TextField
                ),
                child: TextField(
                  controller: TextEditingController(text: 'The module offers a read-only interface for status and management information, emphasizing user engagement without compromising on administrative controls. It provides essential data visualization in a secure and straightforward layout.'),
                  readOnly: true,
                  maxLines: null,  // Allows the text field to expand vertically based on content
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(), // Add a border
                    contentPadding: EdgeInsets.all(8), // Padding inside the text field
                  ),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),

            ],
          ),
        ),



        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('groupChatOptions'),
        backgroundColor: const Color(0xFFF4C534),
        child: const Icon(Icons.group_add, color: Colors.white),
      ),
    );
  }
}
