import { show } from './show.js'
import { addTransactionToHistory } from './addTransaction.js';

export const substractBalance = (history, currentBalance, moneyToSubstract) => {
    const susbtractValue = parseInt(moneyToSubstract, 10);
    if(susbtractValue > currentBalance){
        show(   );
        return currentBalance;
    }else{
        currentBalance = currentBalance - susbtractValue;
        addTransactionToHistory(history, "Retrait", susbtractValue);
        console.clear();
        show('Votre nouveau solde est: ' + currentBalance + ' Ar' + '\n');
        return currentBalance;
    }
}