import { show } from "./show.js";

export const addCard = (cards, name, owner) => {
    const newCard = {
        "name": name,
        "owner": owner
    }
    cards.push(newCard);
    show('\n Ajout réussi \n');
}   