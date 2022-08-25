//
//  EndScreenViewController.swift
//  QuizApp
//
//  Created by Priyanka kunja on 26/07/22.
//

import UIKit

class EndScreenViewController: ViewController {

    @IBOutlet weak var endDisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        endDisplayLabel.text = "Quiz Completed"
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
