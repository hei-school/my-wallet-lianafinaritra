import { show } from "./show.js";

export const getCard = (cards, name) => {
    const searchCard = cards.find(item => item.name === name); 
    const updatedCards = cards.filter(item => item.name !== name);
    if(searchCard){
        show(`\n Voici la carte: ${searchCard.name}, de ${searchCard.owner} \n`)
        return updatedCards;
    }else{
        show("\n La carte n'a pas été trouvée ou a été perdu \n")
        return cards;
    }
}