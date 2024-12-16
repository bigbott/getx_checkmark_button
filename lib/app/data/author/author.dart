// To parse this JSON data, do
//
//     final author = authorFromJson(jsonString);

import 'dart:convert';

Author authorFromJson(String str) => Author.fromJson(json.decode(str));

String authorToJson(Author data) => json.encode(data.toJson());

class Author {
    String name;
    String description;

    Author({
        required this.name,
        required this.description,
    });

    factory Author.fromJson(Map<String, dynamic> json) => Author(
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
    };
}
