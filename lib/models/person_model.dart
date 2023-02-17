
import 'package:realm/realm.dart';

part 'person_model.g.dart';

// NOTE: These Realm models are private and therefore should be copied into the same .dart file.

@RealmModel()
class _PersonModel {
  @PrimaryKey()
  @MapTo('_id')
  String? id;

  int? age;

  _PersonModelContact? contact;

  String? name;
}



@RealmModel(ObjectType.embeddedObject)
@MapTo('PersonModel_contact')
class _PersonModelContact {
  String? email;
  String? phone;
}

