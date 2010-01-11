package no.gravalvorlig.domain

class Company {
    Long orgId
    String companyname
    String organisationform
    Address address
    String county
    PostalAddress poAddress
    String email
    String url
    Long telephoneNo
    Long cellNo
    Long faxNo
    Date foundedDate
    String ceo
    String contact
    String code
    String sectorCode
    boolean isBrregged
    static constraints = {
    	   orgId(unique:true)
	   
    }

    static hasMany = [ users : User ]
}
