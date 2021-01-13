
def reorder_log_files(logs)
    alpha = []
    num = []
    
    num_ref = '0123456789'
    logs.each do |log|
        target_idx = log.index(" ") + 1
        if num_ref.include?(log[target_idx])
            num.push(log)
        else 
            pair = [log[target_idx..-1], log]
            alpha.push(pair)
        end
    end
    alpha.sort.map{|pair| pair[1]}.push(*num)
end

logs = ["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"]

expected = ["let1 art can","let3 art zero","let2 own kit dig","dig1 8 1 5 1","dig2 3 6"]

# puts reorder_log_files(logs)
puts "Should output true: #{reorder_log_files(logs) == expected}"