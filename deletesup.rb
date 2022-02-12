puts"Enter the id of Supervisor you wanna delete:"
id = gets.chomp.to_i
sql = "DELETE FROM supervisor_table WHERE Id =#{id}"
@connection.query(sql);

puts "Supervisor deleted Successfully!!"