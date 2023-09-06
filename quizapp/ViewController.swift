//
//  ViewController.swift
//  quizapp
//
//  Created by Andreas Antonsson on 2023-09-06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionTextFeild: UITextView!
    
    @IBOutlet weak var trueBtn: UIButton!
    
    @IBOutlet weak var falseBtn: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    

    let questions = [
        QuestionStruct(question: "Sharks are mammals", answer: false),
        QuestionStruct(question: "Sea otters have a favorite rock they use to break open food.", answer: true),
        QuestionStruct(question: "The blue whale is the biggest animal to have ever lived.", answer: true),
        QuestionStruct(question: "The hummingbird egg is the world's smallest bird egg.", answer: true),
        QuestionStruct(question: "Pigs roll in the mud because they don't like being clean.", answer: false),
      QuestionStruct(question: "Bats are blind.", answer: false),
        QuestionStruct(question: "A dog sweats by panting its tongue.", answer: false),
        QuestionStruct(question: "It takes a sloth two weeks to digest a meal.", answer: true),
        QuestionStruct(question: "The largest living frog is the Goliath frog of West Africa.", answer: true),
        QuestionStruct(question: "An ant can lift 1,000 times its body weight.", answer: false)
        
    ]
    
    var currentQuestionIndex = 0 // Variabel för att hålla reda på nuvarande f
    
    func questionProgress() {

            if currentQuestionIndex < questions.count {
                let quiz = questions[currentQuestionIndex]
                currentQuestionIndex += 1
                questionTextFeild.text = "\(currentQuestionIndex). \(quiz.question)\n"
                
                let progress = Float(currentQuestionIndex) / Float(questions.count)
                progressBar.progress = progress
            } else {
                questionTextFeild.text = "The game is over. Thank you for playing! Reset game?\nThen press 'True'"
                currentQuestionIndex = 0
            }
 
    }
    
    
    @IBAction func pressedTrueBtn(_ sender: Any) {
        questionProgress()

    }
    
    
    @IBAction func pressedFalseBtn(_ sender: Any) {
        questionProgress()

    }
    
}



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
