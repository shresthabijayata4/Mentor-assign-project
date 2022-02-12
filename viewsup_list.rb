    puts"Here are your records from the database \n"
    results = @connection.query("SELECT * FROM supervisor_table")
    print "Supervisor_id\t"
    print "Name\t"
    puts "
    "

    results.each do |row|
        print "#{row['Id']}\t"
        print "#{row['name']}\t"
        puts"
        "
    end


        


