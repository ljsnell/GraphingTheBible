// List of occupations
merge(F:Occupation {name: "Fishermen"}) with F
merge(T:Occupation {name: "Tax Collector"}) with T, F
merge(U:Occupation {name: "Unknown"}) with U, T, F
merge(C:Occupation {name: "Carpenter"}) with C, U, T, F

// Disciples
    // Tax Collectors
match(d8:Disciple {name: "Matthew (the publican)"}) with d8, C, U, T, F
merge(d8)-[:was_a]->(T) with C, U, F

    // Carpenter
match(GTS:God {name: "The Son"}) with GTS, C, U, F
merge(GTS)-[:was_a]->(C) with U, F

    // Fishermen
match(d2:Disciple {name: "Andrew"}) with d2, U, F
merge(d2)-[:was_a]->(F) with U, F
match(d1:Disciple {name: "Simon (also known as Peter)"}) with d1, U, F
merge(d1)-[:was_a]->(F) with U, F
match(d3:Disciple {name: "James (son of Zebedee)"}) with d3, U, F
merge(d3)-[:was_a]->(F) with U, F
match(d4:Disciple {name: "John"}) with d4, U, F
merge(d4)-[:was_a]->(F) with U

    // Unknown
match(d6:Disciple {name: "Bartholomew"}) with d6, U
merge(d6)-[:was_a]->(U) with U
match(d7:Disciple {name: "Thomas"}) with U, d7
merge(d7)-[:was_a]->(U) with U
match(d12:Disciple {name: "Judas Iscariot"}) with U, d12
merge(d12)-[:was_a]->(U) with U
match(d5:Disciple {name: "Philip"}) with U, d5
merge(d5)-[:was_a]->(U) with U
match(d9:Disciple {name: "James (son of Alphaeus)"}) with U, d9
merge(d9)-[:was_a]->(U) with U
match(d11:Disciple {name: "Simon The Zealot"}) with U, d11
merge(d11)-[:was_a]->(U) with U
merge(d10:Disciple {name: "Thaddaeus (Judas the Zealot)"}) with U, d10
merge(d10)-[:was_a]->(U)