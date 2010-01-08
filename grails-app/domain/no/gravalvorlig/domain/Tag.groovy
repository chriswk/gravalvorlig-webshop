package no.gravalvorlig.domain

class Tag implements Comparable, Serializable  {

    String tag

    static constraints = {
        tag(blank:false, unique:true)
    }

    static mapping = {
        cache usage:"transactional"
    }

    static searchable = true

    @Override
    int compareTo(other) {
        tag.compareTo(other?.tag)
    }

    @Override
    String toString() {
        tag
    }
    
}
