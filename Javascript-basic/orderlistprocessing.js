'use strict';

/**
 * Updates the order list based on the given order ID and state.
 *
 * @param {Array} orderList - The list of orders, each containing an `id` and `state`.
 * @param {number} orderId - The ID of the order to be updated.
 * @param {string} state - The new state for the order ('Processing' or any other value).
 * @returns {Array} - The updated order list.
 */
function processOrderList(orderList, orderId, state) {
    if (state === 'Processing') {
        // Update only the specified order's state to 'Processing'
        return orderList.map(item => 
            item.id === orderId ? { ...item, state: 'Processing' } : item
        );
    }
    
    // Remove the order from the list if the state is not 'Processing'
    return orderList.filter(item => item.id !== orderId);
}
