// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class PersonModel extends _PersonModel
    with RealmEntity, RealmObjectBase, RealmObject {
  PersonModel(
    String? id, {
    int? age,
    PersonModelContact? contact,
    String? name,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'contact', contact);
    RealmObjectBase.set(this, 'name', name);
  }

  PersonModel._();

  @override
  String? get id => RealmObjectBase.get<String>(this, '_id') as String?;
  @override
  set id(String? value) => RealmObjectBase.set(this, '_id', value);

  @override
  int? get age => RealmObjectBase.get<int>(this, 'age') as int?;
  @override
  set age(int? value) => RealmObjectBase.set(this, 'age', value);

  @override
  PersonModelContact? get contact =>
      RealmObjectBase.get<PersonModelContact>(this, 'contact')
          as PersonModelContact?;
  @override
  set contact(covariant PersonModelContact? value) =>
      RealmObjectBase.set(this, 'contact', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

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
          mapTo: '_id', optional: true, primaryKey: true),
      SchemaProperty('age', RealmPropertyType.int, optional: true),
      SchemaProperty('contact', RealmPropertyType.object,
          optional: true, linkTarget: 'PersonModel_contact'),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
    ]);
  }
}

class PersonModelContact extends _PersonModelContact
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  PersonModelContact({
    String? email,
    String? phone,
  }) {
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'phone', phone);
  }

  PersonModelContact._();

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  String? get phone => RealmObjectBase.get<String>(this, 'phone') as String?;
  @override
  set phone(String? value) => RealmObjectBase.set(this, 'phone', value);

  @override
  Stream<RealmObjectChanges<PersonModelContact>> get changes =>
      RealmObjectBase.getChanges<PersonModelContact>(this);

  @override
  PersonModelContact freeze() =>
      RealmObjectBase.freezeObject<PersonModelContact>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PersonModelContact._);
    return const SchemaObject(
        ObjectType.embeddedObject, PersonModelContact, 'PersonModel_contact', [
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('phone', RealmPropertyType.string, optional: true),
    ]);
  }
}
