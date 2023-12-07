package model;

public class Card {
    public String name;
    public String value;

    public Card(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName(){
        return this.name;
    }

    public String getValue(){
        return this.value;
    }
}
