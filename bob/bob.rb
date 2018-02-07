class Bob

  def self.hey(remark)
    if remark.strip.empty?
      return 'Fine. Be that way!'
    end
    if (check_only_numbers(remark))
      if remark.strip[-1] == '?'
        'Sure.'
      else
        'Whatever.'
      end
    else
      if remark == remark.upcase
        'Whoa, chill out!'
      elsif remark.strip[-1] == '?'
        'Sure.'
      else
        'Whatever.'
      end
    end
  end

  def self.check_only_numbers(remark)
    remark = remark.delete(',')
    remark = remark.delete(' ')
    remark = remark.delete('?')
    remark = remark.delete(':')
    remark = remark.delete(')')
    remark !~ /\D/
  end

end
