import { show } from './show.js'

export const showHistory = (history) => {
    show("Historique: \n")

    history.forEach((transaction, index) => {
        show(`${index + 1}, Type: ${transaction.type}, Valeur: ${transaction.value} Ar`);
    });
}   