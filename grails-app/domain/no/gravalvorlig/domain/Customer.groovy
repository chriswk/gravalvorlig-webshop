package no.gravalvorlig.domain

class Customer implements Serializable {

    String name
    String email
    Address address

    static belongsTo = CustomerOrder

    static constraints = {
        name(blank:false)
        email(email:true, blank:false)
    }

}
