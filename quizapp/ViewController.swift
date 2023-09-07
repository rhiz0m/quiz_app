//
//  ViewController.swift
//  quizapp
//
//  Created by Andreas Antonsson on 2023-09-06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionTextFeild: UITextView!
    
    @IBOutlet weak var TrueBtn: UIButton!
    
    @IBOutlet weak var FalseBtn: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let questions = [
        QuestionStruct(question: "Sharks are mammals", answer: "False"),
        QuestionStruct(question: "Sea otters have a favorite rock they use to break open food.", answer: "True"),
        QuestionStruct(question: "The blue whale is the biggest animal to have ever lived.", answer: "True"),
        QuestionStruct(question: "The hummingbird egg is the world's smallest bird egg.", answer: "True"),
        QuestionStruct(question: "Pigs roll in the mud because they don't like being clean.", answer: "False"),
        QuestionStruct(question: "Bats are blind.", answer: "False"),
        QuestionStruct(question: "A dog sweats by panting its tongue.", answer: "False"),
        QuestionStruct(question: "It takes a sloth two weeks to digest a meal.", answer: "True"),
        QuestionStruct(question: "The largest living frog is the Goliath frog of West Africa.", answer: "True"),
        QuestionStruct(question: "An ant can lift 1,000 times its body weight.", answer: "False")
        
    ]
    
    var currentQuestionIndex = 0 // Variabel för att hålla reda på nuvarande f
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
       
    }
    
    func updateUI() {
        questionTextFeild.text = questions[currentQuestionIndex].question
    }



    
    
    
    
    func questionProgress() {
        
        if currentQuestionIndex < questions.count {
            let quiz = questions[currentQuestionIndex]
            questionTextFeild.text = "\(currentQuestionIndex). \(quiz.question)\n"
            
            let progress = Float(currentQuestionIndex) / Float(questions.count)
            progressBar.progress = progress
        } else {
            // Alla frågor har besvarats, du kan göra något här om du vill
            questionTextFeild.text = "Game is over"
        }
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
    

        if let usersAnswer = sender.titleLabel?.text { // Hämta texten från titleLabel
            let actualAnswer = questions[currentQuestionIndex].answer
            
            if usersAnswer == actualAnswer {
                print("Right answer")
                print(usersAnswer)
                print(actualAnswer)
                
            } else {
                print("Wrong answer")
                print(usersAnswer)
                print(actualAnswer)
            
            }
            currentQuestionIndex += 1
            questionProgress()
            updateUI()
      
            
           
        } else {
            questionTextFeild.text = "Game is over"
            currentQuestionIndex = 0
        }
        
        
    }
}

     
    
    /*
 
        if let buttonTitle = trueBtn.currentTitle {
            print("Button title: \(buttonTitle)")
        } else {
            print("Button doesn't have a title.")
        }
        
        if currentQuestionIndex < questions.count {
                if let usersAnswer = sender.currentTitle {
                    let actualAnswer = questions[currentQuestionIndex].answer
                    
                    print("User's answer: \(usersAnswer)")
                    print("Actual answer: \(actualAnswer)")
                    
                    if usersAnswer == actualAnswer {
                        print("Right answer")
                    } else {
                        print("Wrong answer")
                    }
                    
                    currentQuestionIndex += 1
                    questionProgress()
                } else {
                    // Här kan du göra något om användaren trycker på knappen när spelet är över
                    print("The game is over.")
                }
            }
    

     */
    
    /*
     
     1. En slumpad fråga från en array visas i textfältet, totalt 10 st frågor.
     2. Användaren svarar genom att trycka true eller false
     3. svaret valideras av en funktion
     4. Svarar användaren rätt ökar progress baren ett snäpp.
     5. Svarar användaren fel står progress baren stilla.
     6. När användaren svarat på alla 10 frågor räknar en funktion ut hur många rätt i procent detta motsvarar.
     
     
     // Questions //
     
     Animals
     Sharks are mammals.
     Answer: False - they are actually classified as fish.
     
     Sea otters have a favorite rock they use to break open food.
     Answer: True - they keep these treasures in the loose skin under their arms.
     
     The blue whale is the biggest animal to have ever lived.
     Answer: True - and that includes dinosaurs!
     
     The hummingbird egg is the world's smallest bird egg.
     Answer: True - on the flip side, ostriches lay the largest eggs.
     
     Pigs roll in the mud because they don't like being clean.
     Answer: False - pigs have few sweat glands and their muddy baths help keep them cool.
     
     Bats are blind.
     Answer: False - bats often find their way using ultrasound but their eyes work, just not particularly well).
     
     A dog sweats by panting its tongue.
     Answer: False - canines sweat through glands in their paws.
     
     It takes a sloth two weeks to digest a meal.
     Answer: True - that's the slowest digestion time of any mammal!
     
     The largest living frog is the Goliath frog of West Africa.
     Answer: True - this amphibian reaches lengths of 12.5 inches and weighs 7.2 pounds.
     
     An ant can lift 1,000 times its body weight.
     Answer: False - ants can lift 5,000 times their body weight!
     
     */

