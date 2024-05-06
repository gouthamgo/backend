public class InventoryManagement {
    // Define a map to store product names (keys) and their corresponding quantities (values)
    Map<String, Integer> inventory = new Map<String, Integer>();

    // Method to add a product to the inventory
    public void addProduct(String productName, Integer quantity) {
        if (inventory.containsKey(productName)) {
            // If the product already exists, update the quantity
            Integer currentQuantity = inventory.get(productName);
            inventory.put(productName, currentQuantity + quantity);
        } else {
            // If the product is new, add it to the inventory
            inventory.put(productName, quantity);
        }
    }

    // Method to update the quantity of a product in the inventory
    public void updateQuantity(String productName, Integer newQuantity) {
        if (inventory.containsKey(productName)) {
            inventory.put(productName, newQuantity);
        } else {
            System.debug('Product does not exist in inventory.');
        }
    }

    // Method to remove a product from the inventory
    public void removeProduct(String productName) {
        if (inventory.containsKey(productName)) {
            inventory.remove(productName);
        } else {
            System.debug('Product does not exist in inventory.');
        }
    }

    // Method to display the current inventory
    public void displayInventory() {
        System.debug('Current Inventory:');
        for (String productName : inventory.keySet()) {
            Integer quantity = inventory.get(productName);
            System.debug(productName + ': ' + quantity);
        }
    }
}

// Usage example:
InventoryManagement inventoryManager = new InventoryManagement();
inventoryManager.addProduct('Laptop', 10);
inventoryManager.addProduct('Phone', 20);
inventoryManager.displayInventory();

inventoryManager.updateQuantity('Laptop', 15);
inventoryManager.removeProduct('Phone');
inventoryManager.displayInventory();
