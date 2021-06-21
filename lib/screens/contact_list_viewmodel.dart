import '../dependencies.dart';
import '../services/contact_service.dart';
import '../models/contact.dart';
import 'viewmodel.dart';

class ContactViewmodel extends Viewmodel {
  List<Contact> _contacts;

  get itemCount => _contacts.length;
  Contact getContactByIndex(index) => _contacts[index];

  final ContactService _service = dependency();

  ContactViewmodel() {
    getContactList();
  }

  void getContactList() async {
    turnBusy();
    _contacts = await _service.getContactList();
    turnIdle();
  }
}
