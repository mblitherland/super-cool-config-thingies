# if you have a jsonb column called `map` with a field like
# map["parent"]["child"], so { "parent": { "child": "value" } }
# you can search using active record with something like

Table.where("map #> '{parent, child}' ? 'value'").count

# You can also pass a token in for handy validation

Table.where("map #> '{field}' ? :token", token: 'value').first
