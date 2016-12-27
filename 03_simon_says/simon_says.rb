def echo(input)
  input

end

def shout(input)
  input.upcase
end

def repeat(input, times=2)
  out = ""
  for i in 1..times do
    out = out +" "+ input
  end
  return out[1...out.length]
end

def start_of_word(input, letter=0)
  input[0..letter-1]
end

def first_word(sentence)
  out = ""
  for i in 0..sentence.length-1 do
    if sentence[i]==" "
      break
    end
    out = out + sentence[i]

  end
  return out
end

def titleize(movie)
  words = movie.split(/\W+/)
  title=words[0].to_s.capitalize + " "
  for i in 1..words.length do
    if words[i]=="and" ||words[i]=="over" ||words[i]=="the" ||words[i]=="or"
      title= title + words[i].to_s + " "
    else
      title= title + words[i].to_s.capitalize + " "
    end
  end
  return title[0..title.length-3]
end
