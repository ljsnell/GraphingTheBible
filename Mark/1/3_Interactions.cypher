// John Baptizing Crowds from Judea and Jerusalem 
MERGE(jtb:Person {name: "John the Baptist"}) with jtb
MERGE(j:Location {name: "Jerusalem"}) with j, jtb
MERGE(cj:Location {name: "Country of Judea"}) with cj, j, jtb


// John was located_in the wilderness
MERGE(w:Location {name: "Wilderness"}) with w, cj, j, jtb
MERGE(jtb)-[:appeared_in]->(w) with jtb, cj, j
MERGE(cj)-[:came_to]->(jtb)-[:baptized]->(cj) with jtb, j
MERGE(j)-[:came_to]->(jtb)-[:baptized]->(j) with jtb, j

// John ate Locusts
MERGE(lo:Animal {value: "Locusts"}) with lo, jtb, j
MERGE(jtb)-[:ate]->(lo) with lo, jtb, j

// People from Judea and Jerusalem visit John
MERGE(cr:Person {name: "People from Judea and all Jerusalem"}) with cr, jtb, j
MERGE(cr)-[:came_to]->(jtb)-[:baptized]->(j) with jtb

// Baptized Jesus who came from Nazareth in the Jordan River
MERGE(g1:God {name: "Jesus Christ, the Son of God"}) with g1, jtb
MERGE(ng:Location {name: "Nazareth of Galilee"}) with ng, g1, jtb
MERGE(jr:Location {name: "Jordan River"}) with jr, g1, ng, jtb

MERGE(g1)-[:came_from]->(ng) with g1, jr, jtb

// John baptized Jesus
MERGE(jtb)-[:baptized]->(g1)-[:baptized_in]->(jr) with g1
MERGE(g3:God {name: "Voice from Heaven"}) with g3, g1
MERGE(g3)-[:spoke_to]->(g1) with g1

// Spirit descended_on Jesus
MERGE(g2:God {name: "Holy Spirit"}) with g2, g1
MERGE(g2)-[:descended_on]->(g1) with g1, g2

// Spirit drove Jesus to the Wilderness
MERGE(w:Location {name: "Wilderness"}) with w, g1, g2
MERGE(g2)-[:drove]->(g1)-[:into]->(w) with g1, g2

//  Satan tempted Jesus
MERGE(g4:Supernatural {name: "Satan"}) with g4, g1
MERGE(g4)-[:tempted]->(g1) with g1

// Angels ministered to Jesus
MERGE(g5:Supernatural {name: "Angels"}) with g5, g1
MERGE(g5)-[:ministered_to]->(g1)

// Wild Animals ministered to Jesus
MERGE(a:Animal {value: "Wild Animals"}) with a, g1
MERGE(a)-[:ministered_to]->(g1)

// John was arrested
MERGE(jtb:Person {name: "John the Baptist"}) with jtb
MERGE(a:Action {name: "Arrested"}) with a, jtb
MERGE(jtb)-[:was]->(a)

// Jesus came into Galilee
MERGE(g:Location {name: "Galilee"}) with g
MERGE(g1:God {name: "Jesus Christ, the Son of God"}) with g1, g
MERGE(g1)-[:came_to]->(g) with g1

// Jesus called Simon, Andrew, James, John. 
MERGE(sg:Location {name: "Sea of Galilee"}) with g1, sg
MERGE(g1)-[:passed_alongside]->(sg) with g1
MERGE(d1:Disciple {name: "Simon (also known as Peter)"}) with d1, g1
MERGE(d2:Disciple {name: "Andrew"}) with d2, g1, d1
MERGE(d3:Disciple {name: "James (son of Zebedee)"}) with d3, g1, d2, d1
MERGE(d4:Disciple {name: "John"}) with d4, g1, d2, d1, d3

MERGE(g1)-[:called]->(d1) with g1, d1, d2, d3, d4
MERGE(g1)-[:called]->(d2) with g1, d1, d2, d3, d4
MERGE(g1)-[:called]->(d3) with g1, d1, d2, d3, d4
MERGE(g1)-[:called]->(d4) with g1, d1, d2, d3, d4

// Simon, Andrew followed Jesus
MERGE(d1)-[:followed]->(g1) with g1, d1, d2, d3, d4
MERGE(d2)-[:followed]->(g1) with g1, d1, d2, d3, d4
MERGE(d3)-[:followed]->(g1) with g1, d1, d2, d3, d4
MERGE(d4)-[:followed]->(g1) with g1, d1, d2, d3, d4

// James, John left their father and hired servants and followed Jesus
MERGE(z:Person {name: "Zebedee"}) with z, d3, d4
MERGE(g:Group {name: "Hired Servants"}) with g, z, d3, d4

MERGE(d3)-[:left]->(z) with d3, z, g, d4
MERGE(d4)-[:left]->(z) with d3, g, d4
MERGE(d3)-[:left]->(g) with d3, g, d4
MERGE(d4)-[:left]->(g)

// Jesus enters Synagogue in Capernum
MERGE(g1:God {name: "Jesus Christ, the Son of God"}) with g1
MERGE(s:Location {name: "Synagogue"}) with s, g1

MERGE(g1)-[:entered]->(s) with g1
MERGE(h:Location {name: "House of Simon and Andrew"}) with h, g1
MERGE(g1)-[:entered]->(h) with g1

// Jesus drives out the unclean spirit
MERGE(mus:Person {name: "Man with Unclean Spirit"}) with mus, g1
MERGE(g6:Supernatural {name: "Unclean Spirit"}) with g6, mus, g1

MERGE(g1)-[:drives_out]->(g6)-[:driven_from]->(mus) with g1

// Jesus heals Simon's mother-in-law
MERGE(sm:Person {name: "Simon's mother-in-law"}) with g1, sm
MERGE(h:Location {name: "House of Simon and Andrew"}) with h, g1, sm
MERGE(sm)-[:in]->(h) with sm, h, g1
MERGE(g1)-[:heals]->(sm) with g1

// Jesus heals all who were sick or oppressed by demons
MERGE(gsod:Group {name: "All who were sick or oppressed by demons"}) with gsod, g1
MERGE(g1)-[:heals]->(gsod) with g1

// Jesus casts out Demons
MERGE(g7:Supernatural {name: "Demons"}) with g1, g7
MERGE(g1)-[:casts_out]->(g7) with g1

// Jesus heals a leper
MERGE(l:Person {name: "Leper"}) with l, g1
MERGE(g1)-[:heals]->(l)