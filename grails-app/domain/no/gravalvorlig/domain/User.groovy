package no.gravalvorlig.domain

class User {
    String firstName
    String lastName
    boolean isPartner = false
    String email
    String url
    String address
    String password
    Long postcode
    Long brRegNr
    static constraints = {
        firstName(nullable: false, size:1..32)
        lastName(nullable: false, size:1..32)
        address(nullable: false)
        brRegNr()
        email(email: true, unique: true)
        password()
        url(url: true)
    }
}
