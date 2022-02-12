puts"Enter the id of Trainee you wanna delete:"
id = gets.chomp.to_i
sql = "DELETE FROM trainee_table WHERE Id =#{id}"
@connection.query(sql);

puts "Trainee deleted Successfully!!"