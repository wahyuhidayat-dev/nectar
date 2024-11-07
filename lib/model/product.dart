class Product {
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  final int? id;
  static const String idKey = "id";

  final String? name;
  static const String nameKey = "name";

  final double? price;
  static const String priceKey = "price";

  final String? description;
  static const String descriptionKey = "description";

  final String? category;
  static const String categoryKey = "category";

  final String? image;
  static const String imageKey = "image";

  final Rating? rating;
  static const String ratingKey = "rating";

  Product copyWith({
    int? id,
    String? name,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
      rating: rating ?? this.rating,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      price: json["price"],
      description: json["description"],
      category: json["category"],
      image: json["image"],
      rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating?.toJson(),
      };

  @override
  String toString() {
    return "$id, $name, $price, $description, $category, $image, $rating, ";
  }
}

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  final double? rate;
  static const String rateKey = "rate";

  final int? count;
  static const String countKey = "count";

  Rating copyWith({
    double? rate,
    int? count,
  }) {
    return Rating(
      rate: rate ?? this.rate,
      count: count ?? this.count,
    );
  }

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json["rate"],
      count: json["count"],
    );
  }

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };

  @override
  String toString() {
    return "$rate, $count, ";
  }
}
