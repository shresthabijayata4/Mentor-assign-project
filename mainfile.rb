require 'mysql2'

@connection = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 'root', :database => 'mentor_db')    

puts "Welcome to Trainee Management System"
loop do 
    puts"Choose an option"
    puts"
    1) Add a new Supervisor
    2) Add a new Trainee
    3) View Supervisor List
    4) View Trainee List
    5) Generate Today List
    6) View all list
    7) Exit
    "
    a = gets.chomp
    a = a.to_i

    case a
    when 1
        load 'sup_create.rb'
    when 2
        load 'trainee_create.rb'
    when 3
        load 'viewsup_list.rb'
    when 4
        load 'viewtrainee_list.rb'
    when 5
        load 'generate_list.rb'
    when 6
        load 'viewall_list.rb'
    when 7
        break
    end
end
@connection.close