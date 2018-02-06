bottles = 99

sentence_1 = ' bottles of beer on the wall, '
sentence_2 = ' bottles of beer.'
sentence_3 = ' Take one down and pass it around, '
sentence_4 = ' bottles of beer on the wall.'
sentence_5 = 'Go to the store and buy some more, 99 bottles of beer on the wall.'

while bottles != -1
  stringy_bottles = bottles.to_s
  new_line = stringy_bottles + sentence_1 + stringy_bottles + sentence_2 + sentence_3 + (bottles - 1).to_s + sentence_4
  puts new_line
  bottles -= 1
  if bottles == 0
    puts 'no more' + sentence_1 + 'no more' + sentence_2 + sentence_3 + 'no more' + sentence_4
    puts sentence_5
    break
  end
end
