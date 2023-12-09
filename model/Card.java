package model;

public class Card {
    public String name;
    public String owner;

    public Card(String name, String owner) {
        this.name = name;
        this.owner = owner;
    }

    public String getName(){
        return this.name;
    }

    public String getOwner(){
        return this.owner;
    }
}
