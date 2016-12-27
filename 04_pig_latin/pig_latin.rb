#write your code here

def translate(input)
  words = input.split(/\W+/)
  translate=""
  for i in 0...words.length
    if i>0
      translate = translate.to_s + " "
    end
    if (words[i][0] =="a" || words[i][0]== "e" || words[i][0]== "i"|| words[i][0]== "o" || words[i][0]== "u")
      translate= translate.to_s + words[i].to_s + "ay"
      next
    else
      if (words[i][1] =="a" || words[i][1]== "e" || words[i][1]== "i"|| words[i][1]== "o" || words[i][1]== "u")
        if words[i][0] =="q"
          translate = translate.to_s + words[i][2..words[i].length].to_s + words[i][0..1].to_s + "ay"
        else
          translate = translate.to_s + words[i][1..words[i].length].to_s + words[i][0].to_s + "ay"
        end
      else
        if (words[i][2] =="a" || words[i][2]== "e" || words[i][2]== "i"|| words[i][2]== "o" || words[i][2]== "u")
          if (words[i][1]=="q" && words[i][2]=="u" && words[i][0] !="a" && words[i][0]!= "e" && words[i][0]!= "i" && words[i][0]!= "o" && words[i][0]!= "u")
            translate = translate.to_s + words[i][3..words[i].length].to_s + words[i][0..2].to_s + "ay"            
          else
            translate = translate.to_s + words[i][2..words[i].length].to_s + words[i][0..1].to_s + "ay"
          end
          else
          translate = translate.to_s + words[i][3..words[i].length].to_s + words[i][0..2].to_s + "ay"
        end
      end
    end
    
  end
  return translate
end
