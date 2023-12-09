import prompt from 'prompt-sync';
import { show } from './function/show.js';
import { showBalance } from './function/showBalance.js';
import { addBalance } from './function/addBalance.js';
import { substractBalance } from './function/substractBalance.js';
import { showHistory } from './function/showHistory.js';
import { addCard } from './function/addCard.js';
import { getCard } from './function/getCard.js';
import { addPhoto } from './function/addPhoto.js';
import { getPhoto } from './function/getPhoto.js';

const wallet = () => {
    let balance = 5000;
    const promptFunction = prompt();
    let choice;
    let history = [];
    let cards = [];
    let photos = [];
    let wallet = {
        "owner": "Liana Finaritra"
    };
    while (true) {
        show('Appuyer sur un chiffre pour éxecuter une action: ' + 
        '\n 1 - Afficher le solde' + 
        '\n 2 - Déposer ' + 
        '\n 3 - Retirer' +
        '\n 4 - Historiques des transactions' +
        '\n 5 - Ajouter une carte' +
        '\n 6 - Récupérer une carte' +
        '\n 7 - Afficher les informations sur le portefeuille' +
        '\n 8 - Ajouter une photo' +
        '\n 9 - Récuperer une photo' +
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
                break
            case '5':
                console.clear();
                const name = promptFunction('Le nom de la carte (CIN, CB, ...):');
                const owner = promptFunction('Son propriétaire: ')
                addCard(cards, name, owner);
                break
            case '6':   
                console.clear();
                const search = promptFunction('Quel carte voulez vous prendre :');
                cards = getCard(cards, search);
                break
            case '7':
                console.clear();
                show(`\n Ce portefeuille appartient à: ${wallet.owner} \n`);
                break
            case '8':
                console.clear();
                const photoID = promptFunction("Un identifiant pour la photo: ");
                const photoOwner = promptFunction('Son propriétaire: ');
                addPhoto(photos, photoID, photoOwner);
                break
            case '9':
                console.clear();
                const searchPhoto = promptFunction('Quel photo voulez vous prendre :');
                photos = getPhoto(photos, searchPhoto);
                break
            case '0':
                break;
            default:
                console.clear();
                show('\n Choix non valide. Veuillez saisir un chiffre de 1 à 4. \n');
                break;
            }
        if (choice === '0') {
            break;
        }
    }
};

wallet();