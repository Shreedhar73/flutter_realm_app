
import 'package:realm/realm.dart';
part 'contact_model.g.dart';

@RealmModel()
class $Contact {
    String? phone;
    String? email;
}