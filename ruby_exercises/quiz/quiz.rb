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
  
  questions.each_with_index do |question, index|
    puts question['question']

    question['options'].each do |option|
      puts option
    end
    print "answer> "

    answer = gets().chomp

    if answer.upcase == question['answer']
      userScore += 1
      puts "Correct! 🎉"
      puts "" 
    else
      puts "Incorrect. The correct answer was #{question['answer']} 😟"
      puts ""
    end

  end 
    puts "Quiz complete! You score #{userScore} out of #{questions.length}. 👏🏽"
end

quizMe()