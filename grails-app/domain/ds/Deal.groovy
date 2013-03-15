package ds

class Deal {
	static expose='deal'
	
	static api = [
		excludedFields: [ "dateCreated","description" ],
		list : { Deal.list() },
		count: { params -> Deal.count() }
	  ]
	
	long id
	String title
	String description
	Date dateCreated
	Date expireDate
	String iconUri
	float originalPrice
	float currentPrice
	long numberofHits=0
	
	static belongsTo=[supplier:Supplier]
	static hasMany=[pictureUris:PictureUri,dealCategories:DealCategory]

    static constraints = {
		title blank:false
		description nullable:true
		originalPrice blank:false
		currentPrice blank:false
		expireDate blank:false
		iconUri nullable:true
		expireDate nullable:true
    }
	/*
	static marshalling={
		xml {
			export{
				attribute 'id'
				attribute 'title'
				virtual{
					supplier { deal, xml->
						xml.startNode(deal.supplier)
						xml.lookupObjectMarshaller(supplier).mashalObject(supplier,xml)
						xml.end()
					}
				}
			}
		}
	}*/
}
