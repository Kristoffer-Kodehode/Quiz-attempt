questions = {
    Q1: {
        Q: "What day was JavaScript released?",
        O: ["May 23rd, 1995", "Nov 24th, 1995", "Dec 4th, 1995", "Dec 17th, 1996"],  
        A: "Dec 4th, 1995"
    }, 
    Q2: {
        Q: "Inside which HTML element do we put the JavaScript?",
        O: ["<script>", "<scripting>", "<js>", "<javascript>"],  
        A: "<script>"
    }, 
    Q3: {
        Q: "What is the correct JavaScript syntax to change the content of the HTML element below? <p id='demo'> This is a demonstration.</p>?",
        O: [
            "document.getElementByName('p').innerHTML = 'Hello World'!;", 
            "document.getElementById('demo').innerHTML = 'Hello World!';", 
            "document.getElement('p').innerHTML = 'Hello World!';", 
            "#demo.innerHTML = 'Hello World!';"
        ],  
        A: "document.getElementById('demo').innerHTML = 'Hello World!';"
    }, 
    Q4: {
        Q: "Where is the correct place to insert a JavaScript?",
        O: [
            "The <body> section",
            "The <head> section",
            "Both the <head> section and the <body> section are correct"],  
        A: "Both the <head> section and the <body> section are correct"
    }, 
    Q5: {
        Q: "What is the correct syntax for referring to an external script called 'xxx.js'?",
        O: ["<script name='xxx.js'>', '<script src='xxx.js'>', '<script href='xxx.js'>"],  
        A: "<script src='xxx.js'>"
    }, 
}

puts "Welcome to this Javascript quiz that i made in Ruby and stole all the questions for! (I previously made one in node and most of those questions were taken from W3 schools' JS quiz)"

puts "How to play:\n 
Read each question and your options properly, then write your answer exactly as it is written in the options."

Q1 = questions[:Q1]
Q2 = questions[:Q2]
Q3 = questions[:Q3]
Q4 = questions[:Q4]
Q5 = questions[:Q5]

score = 0
count = 0

def showOptions(o) o.each { |x| puts "#{x}"} 
end

def winner 
    puts "\nYou win! : D"
end

def looser 
    puts "\nYOU LOOSE! >:("
end

# def incScore 
#     return score += 1
# end

# def ask(q, o, a)
#   puts q
#   showOptions(o)
#   puts "Your answer:"
#   answer = gets.chomp
#   unless answer != a
#     puts "Correct!" 
#     incScore
#   else
#     puts "wrong... :("
#   end
# end

# ask(Q1[:Q], Q1[:O], Q1[:A])
# puts "Your score was #{score}!"

class Quiz

  def initialize(q, o, a)
    @question = q
    @options = o
    @answer = a
  end

  @@score = 0
  @@count = 0

  def incScore 
    return @@score += 1
  end

  def displayScore
    puts "\nYour score is #{@@score}!\n"
  end
  
  def ask
    puts "\n#{@question}\n\n"
    showOptions(@options)
    puts "\nYour answer:\n"
    answer = gets.chomp
    unless answer != @answer
        puts "Correct!\n" 
        incScore
    else
        puts "wrong... :("
    end
  end

end

question1 = Quiz.new(Q1[:Q], Q1[:O], Q1[:A])
question2 = Quiz.new(Q2[:Q], Q2[:O], Q2[:A])
question3 = Quiz.new(Q3[:Q], Q3[:O], Q3[:A])
question4 = Quiz.new(Q4[:Q], Q4[:O], Q4[:A])
question5 = Quiz.new(Q5[:Q], Q5[:O], Q5[:A])

question1.ask
question1.displayScore
question2.ask
question2.displayScore
question3.ask
question3.displayScore
question4.ask
question4.displayScore
question5.ask
question5.displayScore

winner unless @@score < 5
looser unless @@score = 5