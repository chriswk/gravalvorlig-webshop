package no.gravalvorlig.domain

import no.gravalvorlig.webshop.shopping.ShoppingCart

class CustomerOrder {

    Customer customer
    Address billingAddress

    static hasMany = [lineItems:LineItem]

    static transients = ["totalPrice", "shippingAddress"]

    static constraints = {
        // Defaults to same as shipping address
        billingAddress(nullable:true)
    }

    CustomerOrder() {}

    CustomerOrder(ShoppingCart shoppingCart) {
        Item.getAll(shoppingCart.itemIds).each {
            def lineItem = new LineItem(item:it, itemCount: shoppingCart.getItemCount(it.id))
            addToLineItems(lineItem)
        }
    }

    int getTotalPrice() {
        lineItems ? lineItems.sum { it.totalPrice } : 0
    }

    Address getShippingAddress() {
        customer?.address
    }
}
