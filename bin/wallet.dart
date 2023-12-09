import 'clear.dart';

class Wallet {
  int balance = 5000;
  List<Map<String, dynamic>> history = [];
  List<Map<String, dynamic>> cards = [];
  List<Map<String, dynamic>> photos = [];
  Map<String, dynamic> wallet = {
    "owner": "Liana Finaritra"
  };

  void showInfos() {
    print("\n Ce portefeuille appartient à: ${wallet['owner']} \n");
  }

  void addTransactionToHistory(String type, int value) {
    Map<String, dynamic> newTransaction = {
      "type": type,
      "value": value,
    };
    history.add(newTransaction);
  }

  void showHistory() {
    clearConsole();
    print("\n Historique: \n");
    for (int index = 0; index < history.length; index++) {
      int newIndex = index + 1;
      Map<String, dynamic> transaction = history[index];
      print(
          "$newIndex, Type: ${transaction['type']}, Valeur: ${transaction['value']} Ar \n");
    }
  }

  void showBalance() {
    clearConsole();
    print("\n Votre solde actuel est: $balance Ar \n");
  }

  void addBalance(int moneyToAdd) {
    int addValue = moneyToAdd;
    balance += addValue;
    addTransactionToHistory("Dépot", addValue);
    clearConsole();
    print("\n Votre nouveau solde est : $balance Ar \n");
  }

  void subtractBalance(int moneyToSubtract) {
    int subtractValue = moneyToSubtract;
    if (subtractValue > balance) {
      print("\n Vous n'avez pas assez d'argent pour ce retrait \n");
    } else {
      balance -= subtractValue;
      addTransactionToHistory("Retrait", subtractValue);
      clearConsole();
      print("\n Votre nouveau solde est : $balance Ar \n");
    }
  }

  void addCard(String name, String owner) {
    Map<String, dynamic> newCard = {
      "name": name,
      "owner": owner,
    };
    cards.add(newCard);
    print("\n Ajout réussi \n");
  }

   Map<String, dynamic>? getCard(String name) {
    return cards.firstWhere((item) => item['name'] == name);
  }

  void addPhoto(String photoID, String owner) {
    Map<String, dynamic> newPhoto = {
      "photoID": photoID,
      "owner": owner,
    };
    photos.add(newPhoto);
    print("\n Ajout réussi \n");
  }

   Map<String, dynamic>? getPhoto(String photoID) {
    return photos.firstWhere((item) => item['photoID'] == photoID);
  }
}