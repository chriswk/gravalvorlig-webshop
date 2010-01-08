package no.gravalvorlig.domain

class Product {
    String productCode
    String name
    Long price
    String details
    byte[] bigImage
    byte[] thumbnail
    static constraints = {
        productCode(unique: true, blank:false)
        name(blank:false)
        price(blank:false)
        details(blank:false)
        bigImage(maxSize:10241024)
        thumbnail(maxSize:65536)
    }
}
