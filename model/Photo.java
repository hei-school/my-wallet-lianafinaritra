package model;

public class Photo {
    public String photoID;
    public String owner;

    public Photo(String photoID, String owner) {
        this.photoID = photoID;
        this.owner = owner;
    }

    public String getPhotoID(){
        return this.photoID;
    }

    public String getOwner(){
        return this.owner;
    }
}
