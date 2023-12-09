import { show } from "./show.js";

export const addPhoto = (photos, photoID, owner) => {
    const newPhoto = {
        "photoID": photoID,
        "owner": owner
    }
    photos.push(newPhoto);
    show("\n Ajout réussi \n");
}   