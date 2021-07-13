/// Player model
class Player {
  final String name;
  final String label;
  final String? imageUrl;

  const Player({
    required this.name,
    required this.label,
    this.imageUrl,
  });
}
