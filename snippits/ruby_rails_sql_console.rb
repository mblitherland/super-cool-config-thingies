# You can execute arbitrary SQL from the rails console. It can be useful
# for seeing what migrations are deployed, for example.

result = ActiveRecord::Base.connection.execute("select * from schema_migrations")
result.each{ |r| puts r }

# output:
#{"version"=>"20250624144012"}
#{"version"=>"20240126174641"}
#{"version"=>"20240120181956"}
#...

