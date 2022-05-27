MERGE(c1:Chapter {value:1}) with c1

// John Baptizing Crowds from Judea and Jerusalem 
MERGE(jtb:Person {name: "John the Baptist"}) with c1, jtb
MERGE(j:Location {name: "Jerusalem"}) with c1, j
MERGE(cj:Location {name: "Country of Judea"}) with c1, cj

// John was located_in the wilderness
MERGE(w:Location {name: "Wilderness"}) with c1, w

// Baptized Jesus who came from Nazareth in the Jordan River
MERGE(g1:God {name: "Jesus Christ, the Son of God"}) with c1, g1
MERGE(ng:Location {name: "Nazareth of Galilee"}) with c1, ng
MERGE(jr:Location {name: "Jordan River"}) with c1, jr

// John baptized Jesus

// Spirit descended_on Jesus
MERGE(g2:God {name: "Holy Spirit"}) with c1, g2

// Spirit drove Jesus to the Wilderness
MERGE(g2:God {name: "Holy Spirit"}) with c1, g2

//  Satan tempted Jesus
MERGE(g4:Supernatural {name: "Satan"}) with c1, g4

// Angels ministered to Jesus
MERGE(g5:Supernatural {name: "Angels"}) with c1, g5

// John was arrested

// Jesus came into Galilee
MERGE(g:Location {name: "Galilee"}) with c1, g

// Jesus came to the city of Galilee

// Jesus called Simon, Andrew, James, John. 
MERGE(d1:Disciple {name: "Simon (also known as Peter)"}) with d1
MERGE(d2:Disciple {name: "Andrew"}) with d2
MERGE(d3:Disciple {name: "James (son of Zebedee)"}) with d3
MERGE(d4:Disciple {name: "John"}) with d4

// Simon, Andrew followed Jesus

// James, John left their father and hired servants and followed Jesus
MERGE(z:Person {name: "Zebedee"}) with z
MERGE(g:Group {name: "Hired Servants"}) with g

// Jesus drives out the unclean spirit
MERGE(mus:Person {name: "Man with Unclean Spirit"}) with c1, mus
MERGE(g6:Supernatural {name: "Unclean Spirit"}) with c1, g6, mus

// Jesus heals Simon's mother-in-law
MERGE(sm:Person {name: "Simon's mother-in-law"}) with t, d1, c1, sm

// Jesus heals all who were sick or oppressed by demons
MERGE(g:Group {name: "All who were sick or oppressed by demons"}) with g

// Jesus heals a leper
MERGE(l:Person {name: "Leper"}) with c1, l
