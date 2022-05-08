// Initial type
merge(t:TwelveDisciples {type: "One of the Twelve"}) with t

// The Twelve
    // Brothers
    // James & John
    // Simon and Andrew
merge(d1:Disciple {name: "Simon (also known as Peter)"}) with t, d1
merge(d1)-[:is_a]->(t) with t, d1
merge(d2:Disciple {name: "Andrew"}) with t, d1, d2
merge(d1)<-[:brothers]->(d2) with t, d2
merge(d2)-[:is_a]->(t) with t
merge(d3:Disciple {name: "James (son of Zebedee)"}) with t, d3
merge(d3)-[:is_a]->(t) with t, d3
merge(d4:Disciple {name: "John"}) with t, d3, d4
merge(d3)<-[:brothers]->(d4) with t, d4
merge(d4)-[:is_a]->(t) with t
merge(d5:Disciple {name: "Philip"}) with t, d5
merge(d5)-[:is_a]->(t) with t
merge(d6:Disciple {name: "Bartholomew"}) with t, d6
merge(d6)-[:is_a]->(t) with t
merge(d7:Disciple {name: "Thomas"}) with t, d7
merge(d7)-[:is_a]->(t) with t
merge(d8:Disciple {name: "Matthew (the publican)"}) with t, d8
merge(d8)-[:is_a]->(t) with t
merge(d9:Disciple {name: "James (son of Alphaeus)"}) with t, d9
merge(d9)-[:is_a]->(t) with t
merge(d10:Disciple {name: "Thaddaeus (Judas the Zealot)"}) with t, d10
merge(d10)-[:is_a]->(t) with t
merge(d11:Disciple {name: "Simon The Zealot"}) with t, d11
merge(d11)-[:is_a]->(t) with t
merge(d12:Disciple {name: "Judas Iscariot"}) with t, d12
merge(d12)-[:is_a]->(t)