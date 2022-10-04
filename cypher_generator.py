import pandas as pd
# Example query: MERGE(w)-[:in]->(c1) with c1
# MERGE(d1:Disciple {name: "Simon (also known as Peter)"}) with t, d1, c1
# MERGE(d1)-[:in]->(c1) with c1, t, d1
pd.set_option('display.max_colwidth', None)
csv_to_generate = pd.read_csv('./Mark/2/Chapter2.csv')
node_number = 0
list_of_node_numbers = ''

for i, row in enumerate(csv_to_generate.itertuples()):
    node_number += 1
    first_node_number = node_number
    list_of_node_numbers += 'n' + str(first_node_number)

    # First Merge
    first_merge = "MERGE(n"+str(first_node_number)+":" + row.Node1_Label + \
        ' {name:"' + row.Node1_Value+'"}) with ' + list_of_node_numbers
    print(first_merge)
    list_of_node_numbers += ', '

    # Second Merge
    node_number += 1
    second_node_number = node_number
    list_of_node_numbers += 'n' + str(second_node_number)

    second_merge = "MERGE(n"+str(second_node_number)+":" + row.Node2_Label + \
        ' {name: "' + row.Node2_Value + '"}) with ' + str(list_of_node_numbers)
    print(second_merge)
    list_of_node_numbers += ', '

    # Relationship Query
    generated_query = 'MERGE(n'+str(first_node_number)+')-[:' + \
        row.Relationship_Type + ']->(n'+str(second_node_number)+')'

    print(generated_query)
# generated_query = "MERGE(n1:" + csv_to_generate['Node1_Label'] + ' {name:"' + csv_to_generate['Node1_Value']+'"})-[:' + \
#     csv_to_generate['Relationship_Type'] + ']->(n2:' + csv_to_generate['Node2_Label'] + \
#     ' {name: "' + csv_to_generate['Node2_Value'] + '"})'
