puts "Enter the Supervisor details"
puts "Enter Supervisor ID number"
id = gets.chomp
id = id.to_i
puts"Enter Supervisor's name"
name = gets

sql="INSERT INTO supervisor_table VALUES (#{id},'#{name}')"
@connection.query(sql);

puts("Data inserted successfully!!");
