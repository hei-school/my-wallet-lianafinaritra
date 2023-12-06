class Wallet:
    def __init__(self):
        self.balance = 5000
        self.history = []

    def add_transaction_to_history(self, type, value):
        new_transaction = {
            "type": type,
            "value": value
        }
        self.history.append(new_transaction)

    def show_history(self):
        print("Historique: \n")
        for index, transaction in enumerate(self.history, start=1):
            print(f"{index}, Type: {transaction['type']}, Valeur: {transaction['value']} Ar \n")

    def show_balance(self):
        print(f"Votre solde actuel est: {self.balance} Ar \n")

    def add_balance(self, money_to_add):
        add_value = int(money_to_add)
        self.balance = self.balance + add_value
        self.add_transaction_to_history("Dépot", add_value)
        print(f"Votre nouveau solde est : {self.balance} Ar \n")

    def subtract_balance(self, money_to_subtract):
        subtract_value = int(money_to_subtract)
        if(subtract_value > self.balance):
            print("Vous n'avez pas assez d'argent pour ce retrait \n")

        else:
            self.balance = self.balance - subtract_value
            self.add_transaction_to_history("Retrait", subtract_value)
            print(f"Votre nouveau solde est : {self.balance} Ar \n")

def wallet():
    wallet = Wallet()

    while True:
        print("Appuyer sur un chiffre pour éxecuter une action: ")
        print("1 - Afficher le solde")
        print("2 - Déposer")
        print("3 - Retirer")
        print("4 - Historiques des transactions")
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

        elif choice == "0":
            break

        else:
            print("Choix non valide. Veuillez saisir un chiffre de 1 à 4.")
            break

if __name__ == "__main__":
    wallet()
