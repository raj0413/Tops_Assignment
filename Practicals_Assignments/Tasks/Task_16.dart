import 'dart:io';

void main() {
  Map<String, String> addressBook = {};

  while (true) {
    print("\nAddress Book Options:");
    print("1. Add Entry");
    print("2. Update Entry");
    print("3. Remove Entry");
    print("4. Display Address Book");
    print("5. Exit");

    print("\nEnter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        _addEntry(addressBook);
        break;
      case 2:
        _updateEntry(addressBook);
        break;
      case 3:
        _removeEntry(addressBook);
        break;
      case 4:
        _displayAddressBook(addressBook);
        break;
      case 5:
        print("Exiting...");
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}

void _addEntry(Map<String, String> addressBook) {
  print("Enter the name:");
  String name = stdin.readLineSync()!;
  print("Enter the phone number:");
  String phoneNumber = stdin.readLineSync()!;

  if (addressBook.containsKey(name)) {
    print("Name already exists. Use 'Update Entry' to modify it.");
  } else {
    addressBook[name] = phoneNumber;
    print("Entry added successfully.");
  }
}

void _updateEntry(Map<String, String> addressBook) {
  print("Enter the name to update:");
  String name = stdin.readLineSync()!;

  if (!addressBook.containsKey(name)) {
    print("Name does not exist. Use 'Add Entry' to create it.");
  } else {
    print("Enter the new phone number:");
    String phoneNumber = stdin.readLineSync()!;
    addressBook[name] = phoneNumber;
    print("Entry updated successfully.");
  }
}

void _removeEntry(Map<String, String> addressBook) {
  print("Enter the name to remove:");
  String name = stdin.readLineSync()!;

  if (!addressBook.containsKey(name)) {
    print("Name does not exist.");
  } else {
    addressBook.remove(name);
    print("Entry removed successfully.");
  }
}

void _displayAddressBook(Map<String, String> addressBook) {
  print("\nCurrent Address Book:");
  addressBook.forEach((name, phoneNumber) {
    print("$name: $phoneNumber");
  });
}