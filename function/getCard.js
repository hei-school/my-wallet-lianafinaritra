export const getCard = (cards, name) => {
    return cards.find(item => item.name === name); 
}