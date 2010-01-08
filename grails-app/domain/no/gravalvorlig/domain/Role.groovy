package no.gravalvorlig.domain

class Role {
    String rolename
    String displayname
    static constraints = {
        rolename(unique: true, nullable: false)
        displayname(blank:false)
    }
}
