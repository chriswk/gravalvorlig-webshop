package no.gravalvorlig.domain

class LineItem implements Serializable {

    Item item
    int itemCount

    static belongsTo = CustomerOrder

    static transients = ["totalPrice"]

    static constraints = {
        itemCount(min:0)  // TODO 1?
    }

    int getTotalPrice() {
        item ? item.price * itemCount : 0
    }
}
