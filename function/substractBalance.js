import { show } from './show.js'
import { addTransactionToHistory } from './addTransaction.js';

export const substractBalance = (history, currentBalance, moneyToSubstract) => {
    const susbtractValue = parseInt(moneyToSubstract, 10);
    if(susbtractValue > currentBalance){
        return currentBalance;
    }else{
        currentBalance = currentBalance - susbtractValue;
        addTransactionToHistory(history, "Retrait", susbtractValue);
        console.clear();
        show(' \n Votre nouveau solde est: ' + currentBalance + ' Ar' + '\n');
        return currentBalance;
    }
}