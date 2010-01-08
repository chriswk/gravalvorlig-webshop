package no.gravalvorlig.webshop.shopping

/**
 *
 * @author chriswk
 */
class ShoppingCart implements Serializable {

    // Key: item id, value: item count
    def contents = new HashMap<Long,Integer>()

    boolean isEmpty() {
        contents.isEmpty()
    }

    int getItemCount() {
        contents.values().sum() as int ?: 0
    }

    int getItemCount(Long id) {
        contents.get(id) ?: 0
    }

    void clearItem(Long id) {
        contents.remove(id)
    }

    void addItem(Long id) {
        def count = contents.get(id) ?: 0
        contents.put(id, count + 1)
    }

    void removeItem(Long id) {
        def count = contents.get(id)
        if (count && count > 1) {
            contents.put(id, count - 1)
        } else {
            clearItem(id)
        }
    }

    List<Long> getItemIds() {
        contents.keySet() as List
    }

}