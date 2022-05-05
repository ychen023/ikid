//
//  ViewController.swift
//  iKid
//
//  Created by Yilin Chen on 5/4/22.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var SwitchTouched: UIButton!
    var isOpen = false
    var isLoadingViewController = false

    override func viewDidLoad() {
        super.viewDidLoad()
//        let image: UIImage? = UIImage(named: "Good Joke")
//        ImageView.image = image
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
        let image: UIImage? = UIImage(named: "Good Joke")
        isOpen = false
        ImageView.image = image
        
    }
    
    @IBAction func btnFlip(_ sender: Any) {
        if isOpen {
            let image: UIImage? = UIImage(named: "Good Joke")
            ImageView.image = image
            UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            isOpen = false
        } else {
            let image: UIImage? = UIImage(named: "Good Joke 2")
            ImageView.image = image
            UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            isOpen = true

        }
        
    }
    

}

