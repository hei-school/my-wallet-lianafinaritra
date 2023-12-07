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

    switch (choice) {
      case "1":
        wallet.showBalance();
        break;
      case "2":
        String added = write("Montant à déposer (Ar): ");
        int addedValue = int.parse(added);
        wallet.addBalance(addedValue);
        break;
      case "3":
        String subtracted = write("Montant à retirer (Ar): ");
        int subtractedValue = int.parse(subtracted);
        wallet.subtractBalance(subtractedValue);
        break;
      case "4":
        wallet.showHistory();
        break;
      case "5":
        String name = write("Le nom de la carte à stocker: ");
        String value = write("La valeur de la carte: ");
        wallet.addCard(name, value);
        break;
      case "6":
        String search = write("Quelle carte voulez-vous prendre: ");
        try {
          var searchCard = wallet.getCard(search)!;
          print("Voici votre carte : ${searchCard['name']}, ${searchCard['value']} \n");
        } catch (e) {
          print('Carte non trouvée');
        }
        break;
      case "0":
        break;
      default:
        print("Choix non valide. Veuillez saisir un chiffre de 0 à 6.");
        break;
    }

    if(choice == "0"){
      break;
    }
  }
}

void main() {
  wallet();
}
