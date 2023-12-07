import 'write.dart';
import 'wallet.dart';

void wallet() {
  Wallet wallet = Wallet();

  while (true) {
    print("Appuyer sur un chiffre pour éxecuter une action: ");
    print("1 - Afficher le solde");
    print("2 - Déposer");
    print("3 - Retirer");
    print("4 - Historiques des transactions");
    print("5 - Ajouter une carte");
    print("6 - Récupérer une carte");
    print("0 - Sortir");

    String choice = write("Votre choix: ");

    if (choice == "1") {
      wallet.showBalance();
    } else if (choice == "2") {
      String added = write("Montant à déposer (Ar): ");
      int addedValue = int.parse(added);
      wallet.addBalance(addedValue);
    } else if (choice == "3") {
      String subtracted = write("Montant à retirer (Ar): ");
      int subtractedValue = int.parse(subtracted);
      wallet.subtractBalance(subtractedValue);
    } else if (choice == "4") {
      wallet.showHistory();
    } else if (choice == "5") {
      String name = write("Le nom de la carte à stocker: ");
      String value = write("La valeur de la carte: ");
      wallet.addCard(name, value);
    } else if (choice == "6") {
      String search = write("Quel carte voulez vous prendre: ");
    try {
      var searchCard = wallet.getCard(search)!;
      print("Voici votre carte : ${searchCard['name']}, ${searchCard['value']} \n");
    } catch (e) {
      print('Carte non trouvée');
    }
    } else if (choice == "0") {
      break;
    } else {
      print("Choix non valide. Veuillez saisir un chiffre de 1 à 4.");
    }
  }
}

void main() {
  wallet();
}
