package model;

import java.util.ArrayList;

public class Wallet {
    private int balance;
    private ArrayList<Transaction> history;
    private ArrayList<Card> cards = new ArrayList<>();
    private ArrayList<Photo> photos = new ArrayList<>();

    public Wallet() {
        this.balance = 5000;
        this.history = new ArrayList<>();
    }

    public void addTransactionToHistory(String type, int value) {
        Transaction newTransaction = new Transaction(type, value);
        this.history.add(newTransaction);
    }

    public void showHistory() {
        System.out.print("\033[H\033[2J");  
        System.out.flush();
        System.out.println("Historique: ");
        for (int index = 0; index < this.history.size(); index++) {
            Transaction transaction = this.history.get(index);
            System.out.printf("%d, Type: %s, Valeur: %d Ar \n", index + 1, transaction.type, transaction.value);
        }
    }

    public void showBalance() {
        System.out.print("\033[H\033[2J");  
        System.out.flush();
        System.out.printf("\n Votre solde actuel est: %d Ar \n", this.balance);
    }

    public void addBalance(int moneyToAdd) {
        int addValue = moneyToAdd;
        this.balance = this.balance + addValue;
        this.addTransactionToHistory("Dépôt", addValue);
        System.out.print("\033[H\033[2J");  
        System.out.flush();
        System.out.printf("\n Votre nouveau solde est : %d Ar ", this.balance, "\n");
    }

    public void subtractBalance(int moneyToSubtract) {
        int subtractValue = moneyToSubtract;
        if (subtractValue > this.balance) {
            System.out.println("\n Vous n'avez pas assez d'argent pour ce retrait \n");
        } else {
            this.balance = this.balance - subtractValue;
            this.addTransactionToHistory("Retrait", subtractValue);
            System.out.print("\033[H\033[2J");  
            System.out.flush();
            System.out.printf("\n Votre nouveau solde est : %d Ar \n", this.balance);
        }
    }

    public void addCard(String name, String owner) {
        Card newCard = new Card(name, owner);
        this.cards.add(newCard);
    }

    public void getCard(String name) {
        ArrayList<Card> updatedCards = new ArrayList<>();
        try{
            for (Card item : cards) {
                if (item.getName().equals(name)) {
                    System.out.println("\n Voici la carte: " + item.getName() + ", de " + item.getOwner());
                }
            }
            for (Card card : cards) {
                if (!card.getName().equals(name)) {
                    updatedCards.add(card);
                }
            } 
            cards = updatedCards;
        } catch (NullPointerException e) {
            System.out.println("\n Carte non trouvé \n");    
        }
    }

    public void addPhoto(String photoID, String owner) {
        Photo newPhoto = new Photo(photoID, owner);
        this.photos.add(newPhoto);
    }

    public void getPhoto(String photoID) {
        ArrayList<Photo> updatedPhotos = new ArrayList<>();
        try{
            for (Photo item : photos) {
                if (item.getPhotoID().equals(photoID)) {
                    System.out.println("Voici la photo: " + item.getPhotoID() + ", de " + item.getOwner());
                }
            
            }
            for (Photo photo : photos) {
                if (!photo.getPhotoID().equals(photoID)) {
                    updatedPhotos.add(photo);
                }
            }
            photos = updatedPhotos;
        } catch (NullPointerException e) {
            System.out.println("\n Photo non trouvée \n");    
        }
    }
}
