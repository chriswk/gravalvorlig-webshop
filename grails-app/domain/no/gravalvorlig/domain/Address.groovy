package no.gravalvorlig.domain

class Address implements Serializable {
    String street1
    String street2
    String city
    String zip

    static constraints = {
        street1(blank:false)
        street2(nullable:true)
        city(blank:false)
        zip(blank:false)
    }

    static mapping = {
        cache usage:"transactional"
    }
    
}
