class Artwork {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  Artwork({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  factory Artwork.fromJson(Map<String, dynamic> json) {
    return Artwork(
      id: json['id'],
      title: json['titulo'],
      description: json['descricao'],
      imageUrl: json['imagem'],
    );
  }
}
