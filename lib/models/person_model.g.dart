// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class PersonModel extends $PersonModel
    with RealmEntity, RealmObjectBase, RealmObject {
  PersonModel(
    String? id, {
    String? name,
    int? age,
    Contact? contact,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'contact', contact);
  }

  PersonModel._();

  @override
  String? get id => RealmObjectBase.get<String>(this, 'id') as String?;
  @override
  set id(String? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  int? get age => RealmObjectBase.get<int>(this, 'age') as int?;
  @override
  set age(int? value) => RealmObjectBase.set(this, 'age', value);

  @override
  Contact? get contact =>
      RealmObjectBase.get<Contact>(this, 'contact') as Contact?;
  @override
  set contact(covariant Contact? value) =>
      RealmObjectBase.set(this, 'contact', value);

  @override
  Stream<RealmObjectChanges<PersonModel>> get changes =>
      RealmObjectBase.getChanges<PersonModel>(this);

  @override
  PersonModel freeze() => RealmObjectBase.freezeObject<PersonModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PersonModel._);
    return const SchemaObject(
        ObjectType.realmObject, PersonModel, 'PersonModel', [
      SchemaProperty('id', RealmPropertyType.string,
          optional: true, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('age', RealmPropertyType.int, optional: true),
      SchemaProperty('contact', RealmPropertyType.object,
          optional: true, linkTarget: 'Contact'),
    ]);
  }
}
