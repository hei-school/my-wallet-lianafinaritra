export const addCard = (cards, name, value) => {
    const newCard = {
        "name": name,
        "value": value
    }
    cards.push(newCard);
}   