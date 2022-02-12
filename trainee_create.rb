puts "Enter the Trainee details"
puts "Enter Trainee ID number"
id = gets.chomp
id = id.to_i
puts"Enter Trainee's name"
name = gets

sql="INSERT INTO trainee_table VALUES (#{id},'#{name}')"
@connection.query(sql);

puts("Data inserted successfully!!");