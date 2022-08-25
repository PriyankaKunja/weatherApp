//
//  ViewController.swift
//  QuizApp
//
//  Created by Priyanka kunja on 26/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(question:"ONE + TWO is equal to THREE", answer: "True"),
        Question(question:"ONE + TWO is equal to Four", answer:"False"),
        Question(question:"ONE + three is equal to five", answer:"False")
    ]
    var questionNumber = 0
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateScreen()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if(questionNumber < quiz.count){
            let answerSubmitted = (sender.titleLabel?.text)!
     
            let actualQuestion = quiz[questionNumber]
            let actualAnswer = actualQuestion.answer
             if (answerSubmitted == actualAnswer){
                score += 1
                 //sender.backgroundColor = UIColor.green
            }
            else{
                score -= 1
              //  sender.backgroundColor =  UIColor.red
            }
            //print(score)
            questionNumber += 1
            updateScreen()
        }
        else{
            print("end of quiz")
            self.navigationController?.pushViewController(EndScreenViewController(), animated: true)
        }
    }
    func updateScreen(){
        if(questionNumber < quiz.count){
            questionLabel.text = quiz[questionNumber].question
          
        }
        
    }
    
    
    
}

