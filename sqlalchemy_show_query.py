from sqlalchemy.dialects import postgresql
# query = somequery.do.the.thing()
print(str(query.statement.compile(dialect=postgresql.dialect())))
# return query.all()
