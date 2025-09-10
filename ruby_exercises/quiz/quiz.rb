def quizMe  
  userScore = 0

  questions = [
    {
      "question" => "What is the capital France?",
      "options" => ["A) London", "B) Paris", "C) Rome", "D) Berlin"],
      "answer" => "B"
    },
    {
      "question" => "Which planet is known as the Red Planet?",
      "options" => ["A) Mars", "B) Jupiter", "C) Venus", "D) Mercury"],
      "answer" => "A"
    },
    {
      "question" => "What is the largest ocean in the world",
      "options" => ["A) Atlantic Ocean", "B) Jupiter", "C) Venus", "D) Mercury"],
      "answer" => "A"
    }
  ]
  
  questions.each do |question|
    puts question['question']
    puts question['options'][0]
    puts question['options'][1]
    puts question['options'][2]
    puts question['options'][3]
    print "input> "
    answer = gets().chomp

    if answer.upcase == question['answer']
       userScore += 1
    end

  end 
    puts "Your score: #{userScore}"
end

quizMe()