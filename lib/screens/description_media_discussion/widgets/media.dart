import 'package:flutter/material.dart';

class GroupMediaWidget extends StatefulWidget {
  const GroupMediaWidget({super.key});

  @override
  State<GroupMediaWidget> createState() => _GroupMediaWidgetState();
}

class _GroupMediaWidgetState extends State<GroupMediaWidget> {
  // Example list of image paths. You might load these dynamically in a real app.
  final List<String> imagePaths = [
    'assets/images/pexels-pixabay-54084.jpg',
    'assets/images/pexels-pixabay-265242.jpg',
    'assets/images/pexels-pixabay-533982.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Substitute for secondaryBackground
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: buildImageCardList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageCardList() {
    return Wrap(
      spacing: 6.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: List<Widget>.generate(imagePaths.length, (int index) {
        return _buildImageCard(imagePaths[index]);
      }),
    );
  }

  Widget _buildImageCard(String path) => ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.asset(
      path,  // Use a placeholder or relevant image path
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    ),
  );
}
