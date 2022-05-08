# Initial Objects
merge(God:God {name: "God"}) return God
merge(God:TheFather {name: "The Father"}) return God
merge(God:TheSon {name: "The Son"}) return God
merge(God:TheHolySpirit {name: "The Holy Spirit"}) return God

# Relationships
match(G:God) with G
match(F:TheFather) with G, F
merge(G)<-[:is]->(F)

match(G:God) with G
match(S:TheHolySpirit) with G, S
merge(G)<-[:is]->(S)

match(G:God) with G
match(S:TheSon) with G, S
merge(G)<-[:is]->(S)

match(G:TheFather) with G
match(S:TheSon) with G, S
merge(G)<-[:is_not]->(S)

match(G:TheSon) with G
match(S:TheHolySpirit) with G, S
merge(G)<-[:is_not]->(S)

match(G:TheFather) with G
match(S:TheHolySpirit) with G, S
merge(G)<-[:is_not]->(S)
