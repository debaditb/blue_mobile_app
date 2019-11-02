class Promotion {
  final String header;
  final List<String> images;
  final String footer;

  Promotion.fromJson(Map<String, dynamic> json)
      : header = json['header'],
        images = json['images'],
        footer = json['footer'];
}
