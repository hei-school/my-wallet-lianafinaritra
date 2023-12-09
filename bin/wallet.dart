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

   void getCard(String name) {
    try {
      Map<String, dynamic> searchCard = cards.firstWhere((item) => item['name'] == name);
      List<Map<String, dynamic>> updatedCards =
        cards.where((item) => item['name'] != name).toList();
      print("Voici la carte : ${searchCard['name']}, de ${searchCard['owner']} \n");
      cards = updatedCards;
    } catch (e) {
      print('\n Carte non trouvée \n');
    }
  }

  void addPhoto(String photoID, String owner) {
    Map<String, dynamic> newPhoto = {
      "photoID": photoID,
      "owner": owner,
    };
    photos.add(newPhoto);
    print("\n Ajout réussi \n");
  }

  void getPhoto(String photoID) {
    try {
      Map<String, dynamic> searchPhoto = photos.firstWhere((item) => item['photoID'] == photoID);
      List<Map<String, dynamic>> updatedPhotos =
        photos.where((item) => item['photoID'] != photoID).toList();
      print("\n Voici la photo: ${searchPhoto['photoID']}, de ${searchPhoto['owner']} \n");
      photos = updatedPhotos;
    } catch (e) {
      print('\n Photo non trouvée \n');
    }
  }
}