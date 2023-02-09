// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Contact extends $Contact with RealmEntity, RealmObjectBase, RealmObject {
  Contact({
    String? phone,
    String? email,
  }) {
    RealmObjectBase.set(this, 'phone', phone);
    RealmObjectBase.set(this, 'email', email);
  }

  Contact._();

  @override
  String? get phone => RealmObjectBase.get<String>(this, 'phone') as String?;
  @override
  set phone(String? value) => RealmObjectBase.set(this, 'phone', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  Stream<RealmObjectChanges<Contact>> get changes =>
      RealmObjectBase.getChanges<Contact>(this);

  @override
  Contact freeze() => RealmObjectBase.freezeObject<Contact>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Contact._);
    return const SchemaObject(ObjectType.realmObject, Contact, 'Contact', [
      SchemaProperty('phone', RealmPropertyType.string, optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
    ]);
  }
}
