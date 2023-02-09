// To parse this JSON data, do
//
//     final personModel = personModelFromJson(jsonString);


import 'package:realm/realm.dart';

import 'contact_model.dart';

part 'person_model.g.dart';

@RealmModel()
class $PersonModel {
    // PersonModel({
    //     this.id,
    //     this.name,
    //     this.age,
    //     this.contact,
    // });
    @PrimaryKey()
    String? id;
    String? name;
    int? age;
    $Contact? contact;

    // factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
    //     id: json["_id"] == null ? null : Id.fromJson(json["_id"]),
    //     name: json["name"],
    //     age: json["age"],
    //     contact: json["contact"] == null ? null : Contact.fromJson(json["contact"]),
    // );

    // Map<String, dynamic> toJson() => {
    //     "_id": id?.toJson(),
    //     "name": name,
    //     "age": age,
    //     "contact": contact?.toJson(),
    // };
}



class Id {
    Id({
        this.oid,
    });

    String? oid;

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024oid": oid,
    };
}
