import { show } from './show.js'

export const showBalance = (currentBalance) => {
    console.clear();
    show('\n' + ' Votre solde actuel est: ' + currentBalance + ' Ar' + '\n');
}