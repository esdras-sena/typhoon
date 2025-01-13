export const formatCurrency = (currency) => {
    let amount = currency / 1e18;
    return amount || 0;
}