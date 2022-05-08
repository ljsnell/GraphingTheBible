// Initial Objects
merge(G:God {name: "God"}) with G
merge(GTF:God {name: "The Father"}) with G, GTF
merge(GTS:God {name: "The Son"}) with, G, GTF, GTS
merge(THS:God {name: "The Holy Spirit"}) with G, GTF, GTS, THS

// Relationships
merge(G)<-[:is]->(GTF)
merge(G)<-[:is]->(GTS)
merge(G)<-[:is]->(THS)

merge(GTF)<-[:is_not]->(GTS)
merge(GTF)<-[:is_not]->(THS)
merge(GTS)<-[:is_not]->(THS)
