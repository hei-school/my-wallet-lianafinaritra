export const addTransactionToHistory = (history, type, value) => {
    const newTransaction = {
        "type": type,
        "value": value
    }
    history.push(newTransaction);
}   