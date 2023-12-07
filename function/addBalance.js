import { show } from './show.js'
import { addTransactionToHistory } from './addTransaction.js';

export const addBalance = (history, currentBalance, moneyToAdd) => {
    const addValue = parseInt(moneyToAdd, 10);
    currentBalance = currentBalance + addValue;
    addTransactionToHistory(history, "Dépot", addValue);
    console.clear();
    show('Votre nouveau solde est: ' + currentBalance + ' Ar' + '\n');
    return currentBalance;
}