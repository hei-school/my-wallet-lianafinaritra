class Wallet {
  int balance = 5000;
  List<Map<String, dynamic>> history = [];
  List<Map<String, dynamic>> cards = [];

  void addTransactionToHistory(String type, int value) {
    Map<String, dynamic> newTransaction = {
      "type": type,
      "value": value,
    };
    history.add(newTransaction);
  }

  void showHistory() {
    print("Historique: \n");
    for (int index = 0; index < history.length; index++) {
      int newIndex = index + 1;
      Map<String, dynamic> transaction = history[index];
      print(
          "$newIndex, Type: ${transaction['type']}, Valeur: ${transaction['value']} Ar \n");
    }
  }

  void showBalance() {
    print("Votre solde actuel est: $balance Ar \n");
  }

  void addBalance(int moneyToAdd) {
    int addValue = moneyToAdd;
    balance += addValue;
    addTransactionToHistory("Dépot", addValue);
    print("Votre nouveau solde est : $balance Ar \n");
  }

  void subtractBalance(int moneyToSubtract) {
    int subtractValue = moneyToSubtract;
    if (subtractValue > balance) {
      print("Vous n'avez pas assez d'argent pour ce retrait \n");
    } else {
      balance -= subtractValue;
      addTransactionToHistory("Retrait", subtractValue);
      print("Votre nouveau solde est : $balance Ar \n");
    }
  }

  void addCard(String name, String value) {
    Map<String, dynamic> newCard = {
      "name": name,
      "value": value,
    };
    cards.add(newCard);
  }

   Map<String, dynamic>? getCard(String name) {
    return cards.firstWhere((item) => item['name'] == name);
  }
}