
    puts "Your all list:
    "
    results=@connection.query("SELECT * FROM list_table;")
    print "Date"
    print "SUPERVISOR\t"
   print "TRAINEE1\t"
    print "TRAINEE2\t"
    puts""
    
   results.each do |row|
    print "#{row['timestamp']}\t"
       print "#{row['supervisor']}\t"
       print "#{row['trainee1']}\t"
       print "#{row['trainee2']}\t"
       puts ""
    end

