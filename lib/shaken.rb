class String
  
  def shaken # not schtirred
    string_to_return = ''
    self.each_character_tripple do |char1, char2, char3|
      string_to_return << char2
      
      case char2
      when "s"
        string_to_return << 'h' unless char3 == 'h' || char3 == 's'
      when "S"
        if char1 =~ /[A-Z]/ && char3 =~ /[A-Z]/
          string_to_return << 'H'
        elsif char1 =~ // && char3 =~ /[A-Z]/
          string_to_return << 'H' 
        elsif char1 =~ /[A-Z]/ && char3 =~ //
          string_to_return << 'H' 
        else
          string_to_return << 'h'
        end
      else
        # Nada
      end
    end
    
    string_to_return
  end
  
  def each_character_tripple
    index = 0
    character_array = self.scan(/./)
    while index < (character_array.size)
      yield character_array[index-1], character_array[index], character_array[index+1]
      index += 1
    end
  end
end