@t_count = 0
@s_count = 0
@a = 1
@t = 0

result = @connection.query("SELECT * from trainee_table;")
result.each do |row|
    @t_count = @t_count + 1
    # puts @t_count
end

result = @connection.query("SELECT * from supervisor_table;")
result.each do |row|
    @s_count = @s_count + 1
  
end
  
  @t == @s_count

  result = @connection.query("select *, RAND() as ordering from supervisor_table order by ordering;")
  result.each do |row|
        @name = row['name']
        @id = row['Id']
        sql="INSERT INTO list_table (supervisor,s_id) VALUES ('#{@name}','#{@id}');"
        @connection.query(sql)
    end	

    while (@t_count>0)
        result=@connection.query("select *, RAND() as ordering from trainee_table Order by ordering;")
        result.each do |row|
            @name1=row['name']
            sql="UPDATE list_table set trainee2=(case when (trainee1 is not NULL and trainee2 is NULL) then '#{@name1}'
            else 					
            trainee2 end),trainee1=(case when (trainee1 is NULL) then '#{@name1}' else trainee1 end) WHERE 	
            s_id='#{@a}';"
            @connection.query(sql)
            @a=@a+1
            if(@a>@s_count)
                @a=1
            end
            @t_count=@t_count-1;
        end
    end

    puts "Today's list:"
    print $timestamp
    results=@connection.query("(SELECT * FROM list_table ORDER BY list_id DESC LIMIT #{@s_count}) ORDER BY list_id ASC;")
   
    print "\n SUPERVISOR\t"
    print "TRAINEE1\t"
    print "TRAINEE2\t"
    puts""
    
   results.each do |row|
    $timestamp = row['timestamp']
       print "#{row['supervisor']}\t"
       print "#{row['trainee1']}\t"
       print "#{row['trainee2']}\t"
       puts ""
    end
  
