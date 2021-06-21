import '../dependencies.dart';
import 'rest.dart';
import '../models/contact.dart';

class ContactService {
  final RestService rest = dependency();

  Future<List<Contact>> getContactList() async {
    final listJson = await rest.get('contacts');

    return (listJson as List)
        .map((itemJson) => Contact.fromJson(itemJson))
        .toList();
  }
}
