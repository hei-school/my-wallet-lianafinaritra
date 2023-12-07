package model;

import java.util.ArrayList;

public class Wallet {
    private int balance;
    private ArrayList<Transaction> history;
    private ArrayList<Card> cards = new ArrayList<>();

    public Wallet() {
        this.balance = 5000;
        this.history = new ArrayList<>();
    }

    public void addTransactionToHistory(String type, int value) {
        Transaction newTransaction = new Transaction(type, value);
        this.history.add(newTransaction);
    }

    public void showHistory() {
        System.out.println("Historique: ");
        for (int index = 0; index < this.history.size(); index++) {
            Transaction transaction = this.history.get(index);
            System.out.printf("%d, Type: %s, Valeur: %d Ar \n", index + 1, transaction.type, transaction.value);
        }
    }

    public void showBalance() {
        System.out.printf("Votre solde actuel est: %d Ar \n", this.balance);
    }

    public void addBalance(int moneyToAdd) {
        int addValue = moneyToAdd;
        this.balance = this.balance + addValue;
        this.addTransactionToHistory("Dépôt", addValue);
        System.out.printf("Votre nouveau solde est : %d Ar \n", this.balance, "\n");
    }

    public void subtractBalance(int moneyToSubtract) {
        int subtractValue = moneyToSubtract;
        if (subtractValue > this.balance) {
            System.out.println("Vous n'avez pas assez d'argent pour ce retrait \n");
        } else {
            this.balance = this.balance - subtractValue;
            this.addTransactionToHistory("Retrait", subtractValue);
            System.out.printf("Votre nouveau solde est : %d Ar \n", this.balance);
        }
    }

    public void addCard(String name, String value) {
        Card newCard = new Card(name, value);
        this.cards.add(newCard);
    }

    public Card getCard(String name) {
        for (Card item : cards) {
            if (item.getName().equals(name)) {
                return item;
            }
        }
        return null;
    }
}
