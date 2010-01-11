package no.gravalvorlig.domain

class NewsItem {
    String title
    String teaser
    String content

    static hasMany = [ tags : Tag ]      
    static constraints = {
    	   title(blank:false)
	   teaser(nullable:true)
	   content(blank:false)
    }
}
