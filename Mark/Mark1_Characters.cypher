MERGE(c1:Chapter {value:1}) with c1

MERGE(jtb:Person {name: "John the Baptist"}) with c1, jtb
MERGE(jtb)-[:in]->(c1) with c1
// MERGE(l:Location {value: "Wilderness"}) with c1, jtb
MERGE(g1:God {name: "Jesus Christ, the Son of God"}) with c1, g1
MERGE(g1)-[:in]->(c1) with c1
MERGE(g2:God {name: "Holy Spirit"}) with c1, g2
MERGE(g2)-[:in]->(c1) with c1
MERGE(g3:God {name: "Voice from Heaven"}) with c1, g3
MERGE(g3)-[:in]->(c1) with c1
MERGE(g4:Supernatural {name: "Satan"}) with c1, g4
MERGE(g4)-[:in]->(c1) with c1
MERGE(g5:Supernatural {name: "Angels"}) with c1, g5
MERGE(g5)-[:in]->(c1) with c1

// 4 of the 12 are called
MERGE(t:TwelveDisciples {type: "Twelve Disciples"}) with t, c1

// The Twelve
    // Brothers
    // James & John
    // Simon and Andrew
MERGE(d1:Disciple {name: "Simon (also known as Peter)"}) with t, d1, c1
MERGE(d1)-[:in]->(c1) with c1, t, d1
MERGE(d1)-[:is_a]->(t) with t, d1, c1
MERGE(sm:Person {name: "Simon's mother-in-law"}) with t, d1, c1, sm
MERGE(sm)-[:in]->(c1) with c1, t, d1, sm
MERGE(sm)-[:mother_in_law]->(d1) with c1, t, d1
MERGE(d2:Disciple {name: "Andrew"}) with t, d1, d2, c1
MERGE(d2)-[:in]->(c1) with t, c1, d1, d2
MERGE(d1)<-[:brothers]->(d2) with d2, c1, t
MERGE(d2)-[:is_a]->(t) with t, c1
// Dad
MERGE(z:Person {name: "Zebedee"}) with c1, z, t
MERGE(z)-[:in]->(c1) with t, c1, z
MERGE(d3:Disciple {name: "James (son of Zebedee)"}) with t, d3, c1, z
MERGE(d3)-[:in]->(c1) with t, d3, c1, z
MERGE(d3)-[:is_a]->(t) with t, d3, c1, z
MERGE(d4:Disciple {name: "John"}) with t, d3, d4, c1, z
MERGE(d4)-[:in]->(c1) with t, d3, d4, c1, z
MERGE(d3)<-[:brothers]->(d4) with t, d4, c1, z, d3
MERGE(d4)-[:is_a]->(t) with c1, z, d3, d4
MERGE(z)-[:father_of]->(d3) with c1, z, d4
MERGE(z)-[:father_of]->(d4) with c1

MERGE(mus:Person {name: "Man with Unclean Spirit"}) with c1, mus
MERGE(mus)-[:in]->(c1) with c1, mus
MERGE(g6:Supernatural {name: "Unclean Spirit"}) with c1, g6, mus
MERGE(g6)-[:in]->(c1) with c1, mus, g6
MERGE(g6)-[:possessed]->(mus) with c1
MERGE(l:Person {name: "Leper"}) with c1, l
MERGE(l)-[:in]->(c1) with c1
MERGE(ip:Person {name: "Isaiah"}) with ip, c1
MERGE(ip)-[:in]->(c1) with c1

MERGE(a:Animal {value: "Wild Animals"}) with a, c1
MERGE(a)-[:in]->(c1)