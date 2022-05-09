// Kerioth
merge(K:Location {name: "Kerioth"}) with K
match(d12:Disciple {name: "Judas Iscariot"}) with K, d12
merge(d12)-[:from]->(K)

// Galilee
merge(G:Location {name: "Galilee"}) with G
match(d6:Disciple {name: "Bartholomew"}) with d6, G
merge(d6)-[:from]->(G) with G
match(d10:Disciple {name: "Thaddaeus (Judas the Zealot)"}) with d10, G
merge(d10)-[:from]->(G) with G
match(d11:Disciple {name: "Simon The Zealot"}) with G, d11
merge(d11)-[:from]->(G) with G
match(d7:Disciple {name: "Thomas"}) with G, d7
merge(d7)-[:from]->(G) with G
match(d9:Disciple {name: "James (son of Alphaeus)"}) with G, d9
merge(d9)-[:from]->(G) with G

// Capernaum
merge(C:Location {name: "Capernaum"}) with C
match(d8:Disciple {name: "Matthew (the publican)"}) with d8, C
merge(d8)-[:from]->(C) with C

// Bethsaida
merge(B:Location {name: "Bethsaida"}) with B, C
match(d5:Disciple {name: "Philip"}) with B, C, d5
merge(d5)-[:from]->(B) with B, C
match(d2:Disciple {name: "Andrew"}) with d2, B, C
merge(d2)-[:from]->(B) with B, C
merge(d2)-[:from]->(C) with B, C 
match(d1:Disciple {name: "Simon (also known as Peter)"}) with d1, B, C
merge(d1)-[:from]->(B) with B, C
merge(d1)-[:from]->(C) with B, C
merge(J:Location {name: "Jerusalem"}) with B, C, J
match(d3:Disciple {name: "James (son of Zebedee)"}) with d3, B, C, J
merge(d3)-[:from]->(B) with B, C, J
merge(d3)-[:from]->(C) with B, C, J 
merge(d3)-[:from]->(J) with B, C, J
match(d4:Disciple {name: "John"}) with d4, B, C, J
merge(d4)-[:from]->(B) with B, C, J
merge(d4)-[:from]->(C) with B, C, J 
merge(d4)-[:from]->(J)