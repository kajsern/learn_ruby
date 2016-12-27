class Book
  @title=""
  def title=(input)
    words = input.split(/\W+/)
    for i in 0...words.length
      if i>0
        @title=@title + " "
        
        if words[i].to_s == "and" || words[i].to_s == "in" || words[i].to_s == "the" ||words[i].to_s == "of" || words[i].to_s == "a"||words[i].to_s == "an"
          @title = @title.to_s + words[i]
        else
          @title=@title.to_s + words[i].to_s.capitalize
        end
      else
        @title=@title.to_s+words[i].to_s.capitalize
      end
    
    end
    return @title
    
  end
  def title()
    @title
  end
end
