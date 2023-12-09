import 'write.dart';
import 'wallet.dart';
import 'clear.dart';

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
    print("7 - Afficher les informations sur le portefeuille");
    print("8 - Ajouter une photo");
    print("9 - Récuperer une photo");
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
        clearConsole();
        String name = write("Le nom de la carte à stocker: ");
        String owner = write("Son propriétaire: ");
        wallet.addCard(name, owner);
        break;
      case "6":
        clearConsole();
        String search = write("Quelle carte voulez-vous prendre: ");
        wallet.getCard(search);
        break;
      case "7":
        clearConsole();
        wallet.showInfos();
        break;
      case "8":
        clearConsole();
        String photoID = write("Un identifiant pour la photo: ");
        String owner = write("Son propriétaire: ");
        wallet.addPhoto(photoID, owner);
        break;
      case "9":
        clearConsole();
        String search = write("Quelle photo voulez-vous prendre: ");
        wallet.getPhoto(search);
        break;
      case "0":
        break;
      default:
        clearConsole();
        print("\n Choix non valide. Veuillez saisir un chiffre de 1 à 4. \n");
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
