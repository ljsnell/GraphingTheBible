MERGE(c1:Chapter {value:1}) with c1
MERGE(w:Location {name: "Wilderness"}) with c1, w
MERGE(w)-[:in]->(c1) with c1
MERGE(j:Location {name: "Jerusalem"}) with c1, j
MERGE(j)-[:in]->(c1) with c1
MERGE(cj:Location {name: "Country of Judea"}) with c1, cj
MERGE(cj)-[:in]->(c1) with c1
MERGE(ng:Location {name: "Nazareth of Galilee"}) with c1, ng
MERGE(ng)-[:in]->(c1) with c1
MERGE(g:Location {name: "Galilee"}) with c1, g
MERGE(g)-[:in]->(c1) with c1
MERGE(sg:Location {name: "Sea of Galilee"}) with c1, sg
MERGE(sg)-[:in]->(c1) with c1
MERGE(d:Location {name: "desolate place"}) with c1, d
MERGE(d)-[:in]->(c1) with c1
MERGE(c:Location {name: "Capernaum"}) with c1, c
MERGE(c)-[:in]->(c1) with c1, c
// Located_In Capernaum
MERGE(s:Location {name: "Synagogue"}) with c1, s, c
MERGE(s)-[:in]->(c1) with c1, s, c
MERGE(h:Location {name: "House of Simon and Andrew"}) with c1, c, h, s
MERGE(h)-[:in]->(c1) with c1, c, h, s
MERGE(s)-[:located_in]->(c) with c1, c, h
MERGE(h)-[:located_in]->(c)