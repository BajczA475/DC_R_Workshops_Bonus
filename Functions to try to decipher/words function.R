words = function(howmany = 3, word_length = sample(8:15, 1)) {
  answer = rep("_", word_length)
  probs = c(0.0812,0.0149,0.0271,0.0432,0.1202,0.0230,
            0.0203,0.0592,0.0731,0.001,0.0069,0.0398,
            0.0261,0.0695,0.0768,0.0182,0.0011,0.0602,
            0.0628,0.0910,0.0288,0.0111,0.0209,0.0017,0.0211,0.0007)
  choices = sample(LETTERS, howmany, prob = probs)
  spots = sample(1:word_length, howmany)
  answer[spots] = choices
  numLetters = length(answer)
  return(list(Answer = answer, Num_Letter = numLetters, Spots_Letters = rbind(spots, choices)))
}

