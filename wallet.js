import prompt from 'prompt-sync';
import { show } from './function/show.js';
import { showBalance } from './function/showBalance.js';
import { addBalance } from './function/addBalance.js';
import { substractBalance } from './function/substractBalance.js';
import { showHistory } from './function/showHistory.js';

const wallet = () => {
    let balance = 5000;
    const promptFunction = prompt();
    let choice;
    let history = [];
    while (true) {
        show('Appuyer sur un chiffre pour éxecuter une action: ' + 
        '\n 1 - Afficher le solde' + 
        '\n 2 - Déposer ' + 
        '\n 3 - Retirer' +
        '\n 4 - Historiques des transactions' +
        '\n 0 - Sortir \n');

        choice = promptFunction('Votre choix : ');
        
        switch (choice) {
            case '1':
                showBalance(balance);
                break
            case '2':
                const added = promptFunction('Montant à déposer (Ar) :');
                balance = addBalance(history, balance, added);
                break
            case '3':
                const substracted = promptFunction('Montant à retirer (Ar) :');
                balance = substractBalance(history, balance, substracted);
                break
            case '4':
                showHistory(history);
            case '0':
                break;
            default:
                show('Choix non valide. Veuillez saisir un chiffre de 1 à 4.');
                break;
            }
        if (choice === '0') {
            break;
        }
    }
};

wallet();