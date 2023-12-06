import { show } from './show.js'

export const showBalance = (currentBalance) => {
    show('Votre solde actuel est: ' + currentBalance + ' Ar' + '\n');
}