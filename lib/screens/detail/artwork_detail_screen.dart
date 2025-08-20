import 'package:flutter/material.dart';
import 'package:obras_de_arte/data/model/artwork.dart';

class ArtworkDetailScreen extends StatefulWidget {
  final Artwork artwork;
  const ArtworkDetailScreen({super.key, required this.artwork});
  @override
  State<ArtworkDetailScreen> createState() => _ArtworkDetailScreenState();
}

class _ArtworkDetailScreenState extends State<ArtworkDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.artwork.title)),
      body: Placeholder(),
    );
  }
}
