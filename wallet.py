from clear import clear_console

class Wallet:
    def __init__(self):
        self.balance = 5000
        self.history = []
        self.cards = []
        self.photos = []
        self.wallet = {
            "owner": "Liana Finaritra"
        }

    def show_infos(self):
        print(f"\n Ce portefeuille appartient à: {self.wallet['owner']} \n")

    def add_transaction_to_history(self, type, value):
        new_transaction = {
            "type": type,
            "value": value
        }
        self.history.append(new_transaction)

    def show_history(self):
        clear_console()
        print(f"\n Historique: \n")
        for index, transaction in enumerate(self.history, start=1):
            print(f"{index}, Type: {transaction['type']}, Valeur: {transaction['value']} Ar \n")

    def show_balance(self):
        clear_console()
        print(f"Votre solde actuel est: {self.balance} Ar \n")

    def add_balance(self, money_to_add):
        add_value = int(money_to_add)
        self.balance = self.balance + add_value
        self.add_transaction_to_history("Dépot", add_value)
        clear_console()
        print(f"Votre nouveau solde est : {self.balance} Ar \n")

    def subtract_balance(self, money_to_subtract):
        subtract_value = int(money_to_subtract)
        if(subtract_value > self.balance):
            print("Vous n'avez pas assez d'argent pour ce retrait \n")

        else:
            self.balance = self.balance - subtract_value
            self.add_transaction_to_history("Retrait", subtract_value)
            clear_console()
            print(f"Votre nouveau solde est : {self.balance} Ar \n")

    def add_card(self, name, owner):
        new_card = {
            "name": name,
            "owner": owner
        }
        self.cards.append(new_card)
        print(f'\n Ajout réussi \n')

    def get_card(self, name):
        search_card = next((item for item in self.cards if item['name'] == name), None)
        updatedCards = [item for item in self.cards if item['name'] != name]
        clear_console()
        if(search_card):
            print(f'\n Voici la carte: {search_card["name"]}, de {search_card["owner"]} \n')
            self.cards = updatedCards
        else:
            print(f"\n La carte n'a pas été trouvée ou a été perdu \n")
    
    def add_photo(self, photoID, owner):
        new_photo = {
            "photoID": photoID,
            "owner": owner
        }
        self.photos.append(new_photo)
        print(f'\n Ajout réussi \n')

    def get_photo(self, photoID):
        search_photo = next((item for item in self.photos if item['photoID'] == photoID), None)
        updatedPhotos = [item for item in self.photos if item['photoID'] != photoID]
        clear_console()
        if(search_photo):
            print(f"\n Voici la photo : {search_photo['photoID']}, de {search_photo['owner']} \n")
            self.photos = updatedPhotos
        else:
            print(f"\n La photo n'a pas été trouvée ou a été perdu \n")