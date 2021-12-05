//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Victor Feitosa on 05/12/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lblAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWronf: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas respondidas: \(totalCorrectAnswers)"
        lbWronf.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        let score = totalCorrectAnswers * 100 / totalAnswers
        lbScore.text = "\(score)%"
    }
    
   
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
