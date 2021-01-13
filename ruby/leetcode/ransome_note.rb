def checkMagazine(magazine, note)
  m = {}
  n = {}

  magazine.each do |word|
    if m.include?(word)
      m[word] += 1
    else
      m[word] = 1
    end
  end

  note.each do |word|
    if n.include?(word)
      n[word] += 1
    else
      n[word] = 1
    end
  end

  n.each do |key, value|
    if !m.has_key?(key)
      puts "No"
      return
    elsif  m[key] < n[key]
      puts "No"
      return
    end 
  end
    puts "Yes"
    return
end

# mn = gets.rstrip.split

# m = mn[0].to_i

# n = mn[1].to_i

# magazine = gets.rstrip.split(' ').map(&:to_s)

# note = gets.rstrip.split(' ').map(&:to_s)

magazine = 'ive got a lovely bunch of coconuts'.split(' ')
note = 'ive got some coconuts'.split(' ')

checkMagazine(magazine, note)

