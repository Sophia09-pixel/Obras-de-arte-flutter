import 'package:flutter/material.dart';
import 'package:obras_de_arte/data/model/artwork.dart';

class ArtworkListItem extends StatelessWidget {
  final Artwork artwork;
  const ArtworkListItem({super.key, required this.artwork});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                artwork.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder:
                    (_, __, ___) => Container(
                      color: Colors.grey[300],
                      height: 200,
                      child: const Icon(Icons.broken_image, size: 60),
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              artwork.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Descrição
            Text(artwork.description, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
