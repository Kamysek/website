enum Category {  
   github
}

enum Color {
  white
}

class ProjectItemModel {
  final String title;
  final String description;
  final Category category;
  final Color color;
  final String url;
  final String imageUrl;

  ProjectItemModel({
    this.title,
    this.description,
    this.category,
    this.color,
    this.url,
    this.imageUrl,
  });

  ProjectItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        description = map['description'],
        category = Category.values.firstWhere((e) => e.toString() == 'Category.' + map['category']),
        color = Color.values.firstWhere((e) => e.toString() == 'Color.' + map['color']),
        url = map['url'],
        imageUrl = map['imageUrl'];
}
