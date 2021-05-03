def is_palindrome(word)

    front=""
  back=""
  index=0
  while (index<word.length)
    front= word[index]
    back=word[word.length-1-index]
    if (back!=front)
      return false
    end
