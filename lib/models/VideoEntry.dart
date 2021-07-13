class VideoEntry {
  final String name;
  final String category;
  final bool isPremium;
  final String? imageUrl;

  const VideoEntry({
    required this.name,
    required this.category,
    this.isPremium = false,
    this.imageUrl,
  });
}
