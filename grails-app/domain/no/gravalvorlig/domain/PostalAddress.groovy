package no.gravalvorlig.domain

class PostalAddress {
      Long zipCode
      String poAddress

      static constraints = {
      	     zipCode(max:9999L, min:1L)
      }
}