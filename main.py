from wallet import Wallet
from clear import clear_console

def main():
    wallet = Wallet()

    while True:
        print("Appuyer sur un chiffre pour éxecuter une action: ")
        print("1 - Afficher le solde")
        print("2 - Déposer")
        print("3 - Retirer")
        print("4 - Historiques des transactions")
        print("5 - Ajouter une carte")
        print("6 - Récupérer une carte")
        print("7 - Afficher les informations sur le portefeuille")
        print("8 - Ajouter une photo")
        print("9 - Récuperer une photo")
        print("0 - Sortir")

        choice = input("Votre choix: ")

        if choice == "1":
            wallet.show_balance()

        elif choice == "2":
            added = input("Montant à déposer (Ar): ")
            wallet.add_balance(added)

        elif choice == "3":
            substracted = input("Montant à retirer (Ar): ")
            wallet.subtract_balance(substracted)

        elif choice == "4":
            wallet.show_history()

        elif choice == "5":
            clear_console()
            name = input('Le nom de la carte à stocker :')
            owner = input('Son propriétaire :')
            wallet.add_card(name, owner)

        elif choice == "6":
            clear_console()
            search = input('Quel carte voulez vous prendre :')
            wallet.get_card(search)

        elif choice == "7":
            clear_console()
            wallet.show_infos()

        elif choice == "8":
            clear_console()
            photoID = input('Un identifiant pour la photo: ')
            photoOwner = input('Son propriétaire :')
            wallet.add_photo(photoID, photoOwner)

        elif choice == "9":
            clear_console()
            searchPhoto = input('Quel photo voulez vous prendre:')
            wallet.get_photo(searchPhoto)

        elif choice == "0":
            break

        else:
            clear_console()
            print(f"\n Choix non valide. Veuillez saisir un chiffre de 1 à 4. \n")
            break

if __name__ == "__main__":
    main()
