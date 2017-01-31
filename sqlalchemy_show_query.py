from sqlalchemy.dialects import postgresql
# q = somequery.do.the.thing()
print str(q.statement.compile(dialect=postgresql.dialect()))
