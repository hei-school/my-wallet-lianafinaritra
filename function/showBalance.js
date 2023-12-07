import { show } from './show.js'

export const showBalance = (currentBalance) => {
    console.clear();
    show('Votre solde actuel est: ' + currentBalance + ' Ar' + '\n');
}