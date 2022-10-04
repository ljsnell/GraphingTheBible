import pandas as pd
# Example query: MERGE(w)-[:in]->(c1) with c1
# MERGE(d1:Disciple {name: "Simon (also known as Peter)"}) with t, d1, c1
# MERGE(d1)-[:in]->(c1) with c1, t, d1
pd.set_option('display.max_colwidth', None)
csv_to_generate = pd.read_csv('./Mark/2/Chapter2.csv')

print("MERGE(n1:" + csv_to_generate['Node1_Label'] + ' {name:"' + csv_to_generate['Node1_Value']+'"})-[:' +
      csv_to_generate['Relationship_Type'] + ']->(n2:' + csv_to_generate['Node2_Label'] +
      ' {name: "' + csv_to_generate['Node2_Value'] + '"})')
