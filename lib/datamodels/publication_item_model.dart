class PublicationItemModel {
  final String title;
  final String description;
  final String url;
  final String imageUrl;

  PublicationItemModel({
    this.title,
    this.description,
    this.url,
    this.imageUrl,
  });

  PublicationItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        description = map['description'],
        url = map['url'],
        imageUrl = map['imageUrl'];
}
