import java.util.Scanner;

import model.Wallet;

public class Main {
    public static void main(String[] args) {
        wallet();
    }

    public static void wallet() {
        Wallet wallet = new Wallet();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("Appuyer sur un chiffre pour exécuter une action: \n");
            System.out.println("1 - Afficher le solde");
            System.out.println("2 - Déposer");
            System.out.println("3 - Retirer");
            System.out.println("4 - Historique des transactions");
            System.out.println("5 - Ajouter une carte");
            System.out.println("6 - Récupérer une carte");
            System.out.println("7 - Afficher les informations sur le portefeuille");
            System.out.println("8 - Ajouter une photo");
            System.out.println("9 - Récuperer une photo");
            System.out.println("0 - Sortir");

            String choice = scanner.nextLine();

            switch (choice) {
                case "1":
                    wallet.showBalance();
                    break;
                case "2":
                    System.out.print("Montant à déposer (Ar): ");
                    int added = Integer.parseInt(scanner.nextLine());
                    wallet.addBalance(added);
                    break;
                case "3":
                    System.out.print("Montant à retirer (Ar): ");
                    int subtracted = Integer.parseInt(scanner.nextLine());
                    wallet.subtractBalance(subtracted);
                    break;
                case "4":
                    wallet.showHistory();
                    break;
                case "5":
                    System.out.print("\033[H\033[2J");  
                    System.out.flush(); 
                    System.out.print("Le nom de la carte à stocker :");
                    String name = scanner.nextLine();
                    System.out.print("Son propriétaire: ");
                    String value = scanner.nextLine();
                    wallet.addCard(name, value);
                    break;
                case "6":
                    System.out.print("\033[H\033[2J");  
                    System.out.flush(); 
                    System.out.print("Quel carte voulez vous prendre :");
                    String search = scanner.nextLine();
                    wallet.getCard(search);
                    break;
                case "7":
                    System.out.print("\033[H\033[2J");  
                    System.out.flush();
                    System.out.print("\n Ce portefeuille appartient à: Liana Finaritra \n");
                    break;
                case "8":
                    System.out.print("\033[H\033[2J");  
                    System.out.flush();
                    System.out.print("Un identifiant pour la photo: ");
                    String photoID = scanner.nextLine();
                    System.out.print("Son propriétaire: ");
                    String owner = scanner.nextLine();
                    wallet.addPhoto(photoID, owner);
                    break;
                case "9":
                    System.out.print("\033[H\033[2J");  
                    System.out.flush();
                    System.out.print("Quel photo voulez vous prendre :");
                    String searchPhoto = scanner.nextLine();
                    wallet.getPhoto(searchPhoto);
                    break;
                case "0":
                    scanner.close();
                    return;
                default:
                    System.out.print("\033[H\033[2J");  
                    System.out.flush();
                    System.out.println("\n Choix non valide. Veuillez saisir un chiffre de 1 à 4. \n");
                    break;
            }
        }
    }
}
