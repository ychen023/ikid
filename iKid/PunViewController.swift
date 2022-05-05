//
//  ViewController.swift
//  iKid
//
//  Created by Yilin Chen on 5/4/22.
//

import UIKit

class PunViewController: UIViewController {
    
    @IBOutlet weak var JokeLabel: UILabel!
    @IBOutlet weak var SwitchButton: UIButton!
    
    var joke : String = "What do you call a bear with no teeth?"
    var punchline : String = "... A gummy bear."
    var isOpen = false
    var LoadingViewController = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // JokeLabel.text = joke

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if LoadingViewController {
            LoadingViewController = false
        } else {
            viewLoadSetup()
         }
    }
    
    func viewLoadSetup(){
        JokeLabel.text = joke
        isOpen = false
    }
    

    @IBAction func SwitchTouched(_ sender: Any) {
        if isOpen {
            isOpen = false
            JokeLabel.text = joke
            UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            isOpen = true
            JokeLabel.text = punchline
            UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
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
