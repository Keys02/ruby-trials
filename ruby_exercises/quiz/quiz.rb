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
    },
    {
      "question" => "What is the full meaning of HTML",
      "options" => ["A) Hyper The Text Main Language", "B) HyperText Markup Language", "C) Hyper Text Markup Language", "D) Hype Text Markup Language"],
      "answer" => "B"
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
    else
      puts "Incorrect. The correct answer was #{question['answer']} 😟"
    end
    puts ""

  end 
    puts "Quiz complete! You score #{userScore} out of #{questions.length}. 👏🏽"
end

quizMe()