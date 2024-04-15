class User {
  String username;
  String email;
  String password;

  User(this.username, this.email, this.password);

  // Methode zum Drucken der Benutzerdaten
  void printUserData() {
    print('Benutzername: $username');
    print('E-Mail: $email');
    print('Passwort: $password');
  }
}

class RegistrationService {
  static List<User> registeredUsers = [];

  static bool registerUser(String username, String email, String password) {
    // Überprüfen, ob die E-Mail-Adresse bereits registriert ist
    if (registeredUsers.any((user) => user.email == email)) {
      print("Die E-Mail-Adresse ist bereits registriert.");
      return false;
    }

    // Benutzer zur Liste der registrierten Benutzer hinzufügen
    registeredUsers.add(User(username, email, password));
    print("Registrierung erfolgreich für $username.");
    return true;
  }

  // Methode zum Drucken aller registrierten Benutzer
  static void printRegisteredUsers() {
    print("Registrierte Benutzer:");
    for (var user in registeredUsers) {
      user.printUserData();
      print('-------------');
    }
  }
}

void main() {
  // Benutzer registrieren
  RegistrationService.registerUser(
      'Benutzer1', 'benutzer1@example.com', 'passwort123');
  RegistrationService.registerUser(
      'Benutzer2', 'benutzer2@example.com', 'passwort456');

  // Alle registrierten Benutzer anzeigen
  RegistrationService.printRegisteredUsers();
}
