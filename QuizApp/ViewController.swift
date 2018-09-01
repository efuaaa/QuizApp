//
//  ViewController.swift
//  QuizApp
//
//  Created by Qodehub-intern on 06/07/2018.
//  Copyright © 2018 Qodehub-intern. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    lazy var buttons: [UIButton] = [self.button1, self.button2, self.button3, self.button4 ]
    var CorrectAnswer = String()
    
    

    @IBAction func Button1(_ sender: Any) {
        
        if (CorrectAnswer == "1")
        {
            UIView.animate(withDuration: 1.5, animations: {  self.button1.backgroundColor = UIColor.green
            }, completion:
                { _ in
                    self.button1.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
            })
            for button in self.buttons{
                button.isEnabled = false
            }
        }
        else
        {
            UIView.animate(withDuration: 1.5, animations: {  self.button1.backgroundColor = UIColor.red
            }, completion:
                { _ in
                    self.button1.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
            })
            for button in self.buttons{
                button.isEnabled = false
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute:{
           self.RandomQuestions()
            for button in self.buttons{
                button.isEnabled = true
            }
            
            
        })
        
        
        
    }
    
    @IBAction func Button2(_ sender: Any) {
    
    
    if (CorrectAnswer == "2")
    {
        UIView.animate(withDuration: 1.5, animations: {  self.button2.backgroundColor = UIColor.green
        }, completion:
            { _ in
                self.button2.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
        })
        for button in self.buttons{
            button.isEnabled = false
        }
    }
    else
    {
        UIView.animate(withDuration: 1.5, animations: {  self.button2.backgroundColor = UIColor.red
        }, completion:
            { _ in
                self.button2.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
        })
        for button in self.buttons{
            button.isEnabled = false
        }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute:{
            self.RandomQuestions()
            for button in self.buttons{
                button.isEnabled = true
            }
            
        })
        
    }
    
    @IBAction func Button3(_ sender: Any) {
    
    if (CorrectAnswer == "3")
    {
        UIView.animate(withDuration: 1.5, animations: {  self.button3.backgroundColor = UIColor.green
        }, completion:
            { _ in
                self.button3.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
        })
        for button in self.buttons{
            button.isEnabled = false
        }
    }
    else
    {
        UIView.animate(withDuration: 1.5, animations: {  self.button3.backgroundColor = UIColor.red
        }, completion:
            { _ in
                self.button3.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
        })
        for button in self.buttons{
            button.isEnabled = false
        }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute:{
            self.RandomQuestions()
            for button in self.buttons{
                button.isEnabled = true
            }
            
        })
       
        
    }
    @IBAction func Button4(_ sender: Any) {
        if (CorrectAnswer == "4")
        {
            UIView.animate(withDuration: 1.5, animations: {  self.button4.backgroundColor = UIColor.green
            }, completion:
                { _ in
                 self.button4.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
            })
            for button in self.buttons{
                button.isEnabled = false
            }
        }
        else
        {
            UIView.animate(withDuration: 1.5, animations: {  self.button4.backgroundColor = UIColor.red
        }, completion:
            { _ in
                self.button4.backgroundColor = UIColor(red: 0.22, green: 0.88, blue: 0.92, alpha: 1.0)
        })
            for button in self.buttons{
                button.isEnabled = false
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute:{
            self.RandomQuestions()
            for button in self.buttons{
                button.isEnabled = true
            }
      
        })
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RandomQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func RandomQuestions()
    {
        var RandomNumber = arc4random() % 4
        RandomNumber += 1
    
    
    switch(RandomNumber)
    {
    case 1:
        QuestionLabel.text = "How many countries are there in Africa?"
        button1.setTitle("45", for: UIControlState.normal)
        button2.setTitle("54", for: UIControlState.normal)
        button3.setTitle("39", for: UIControlState.normal)
        button4.setTitle("60", for: UIControlState.normal)
        CorrectAnswer = "2"
        break
    case 2 :
        QuestionLabel.text = "How elements are there on the periodic Table?"
        button1.setTitle("89", for: UIControlState.normal)
        button2.setTitle("74", for: UIControlState.normal)
        button3.setTitle("118", for: UIControlState.normal)
        button4.setTitle("136", for: UIControlState.normal)
        CorrectAnswer = "3"
        break
    case 3:
        QuestionLabel.text = "Who is Ghana's current President?"
        button1.setTitle("John Kufuor", for: UIControlState.normal)
        button2.setTitle("Jerry John Rawlings", for: UIControlState.normal)
        button3.setTitle("John Dramani Mahama", for: UIControlState.normal)
        button4.setTitle("Nana Akuffo Addo", for: UIControlState.normal)
        CorrectAnswer = "4"
        break
    case 4:
        QuestionLabel.text = "Which of these courses are not done in any Ghanaian University?"
        button1.setTitle("Computer Science", for: UIControlState.normal)
        button2.setTitle("Telecommunications Engineering", for: UIControlState.normal)
        button3.setTitle("Aeronautical Engineering", for: UIControlState.normal)
        button4.setTitle("Political Science", for: UIControlState.normal)
        CorrectAnswer = "3"
        break
        
    default:
        break
    }
    }

}

