//
//  KnockViewController.swift
//  iKid
//
//  Created by Yilin Chen on 5/4/22.
//

import UIKit

class KnockViewController: UIViewController {
    
    @IBOutlet weak var JokeLabel: UILabel!
    @IBOutlet weak var NextPageButton: UIButton!
    
    var knock: [String] = ["Knock, Knock.", "Who's there?", "Theodore", "Theodore who?", "Theodore won't open, so I knocked instead!"]
    var buttonCount = 1
    var isLoadingViewController = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // JokeLabel.text = knock[0]

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if isLoadingViewController {
            isLoadingViewController = false
        } else {
            viewLoadSetup()
         }
    }

    func viewLoadSetup(){
        JokeLabel.text = knock[0]
        NextPageButton.setTitle("Next", for: .normal)
    }
    
    @IBAction func NextPushed(_ sender: Any) {
        buttonCount += 1 // Increment buttonCounter variable by 1

        switch buttonCount {
        case 1:
            JokeLabel.text = knock[0]
            NextPageButton.setTitle("Next", for: .normal)

        case 2:
            JokeLabel.text = knock[1]

        case 3:
            JokeLabel.text = knock[2]
            
        case 4:
            JokeLabel.text = knock[3]
            
        case 5:
            JokeLabel.text = knock[4]
            buttonCount = 0
            NextPageButton.setTitle("End", for: .normal)
            

        default:
            JokeLabel.text = knock[0]
            NextPageButton.setTitle("Next", for: .normal)
        }
        
        UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
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
