// Initial type
merge(t:TwelveDisciples {type: "One of the Twelve"}) with t

// The Twelve
merge(p:Disciple {name: "Peter"}) with p
merge (p)-[:is_a]->(t)