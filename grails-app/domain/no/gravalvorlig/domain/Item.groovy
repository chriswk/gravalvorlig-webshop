package no.gravalvorlig.domain

class Item  implements Serializable{
    Product product
    Address address

    String name, description, imageUrl
    Integer totalScore = 0, numberOfVotes = 0
    Date dateCreated, lastUpdated
    Double latitude, longitude, price
    static constraints = {
        name(blank:false, maxSize:128)
        description(maxSize:2000)
        latitude(nullable:true)
        longitude(nullable:true)
    }

    static mapping = {
        cache usage:"transactional"
        tags cache:"transactional", cascade: "all,delete-orphan" // sort: "tag"
    }

    static hasMany = [tags : Tag]

    static searchable = true

    static List findAllByTag(String tag, Map params) {
        Item.createCriteria().list {
            tags {
                eq("tag", params.tag)
            }
            maxResults(params.max?.toInteger() ?: 10)
            firstResult(params.offset?.toInteger() ?: 0)
            order(params.sort ?: "name", params.order ?: "asc")
            cacheable(true)
        }
    }

    static int countByTag(String tag) {
        Item.createCriteria().get {
            tags {
                eq("tag", tag)
            }
            projections {
                count("id")
            }
            cacheable(true)
        }
    }

    static List findAllByCategory(Category category, params) {
        Item.createCriteria().list {
            product {
                eq("category", category)
            }
            maxResults(params.max?.toInteger() ?: 10)
            firstResult(params.offset?.toInteger() ?: 0)
            order(params.sort ?: "name", params.order ?: "asc")
            cacheable(true)
        }
    }

    static int countByCategory(Category category) {
        Item.createCriteria().get {
            product {
                eq("category", category)
            }
            projections {
                count("id")
            }
            cacheable(true)
        }
    }

    void addRating(int score) {
        totalScore += score
        numberOfVotes += 1
    }

    double averageRating() {
        totalScore > 0 ? totalScore/numberOfVotes : 0.0
    }

    String tagsAsString() {
        tags ? tags.collect {it.tag}.sort().join(" ") : ""
    }

}
