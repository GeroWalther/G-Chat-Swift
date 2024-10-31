//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//

//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    //just before the screen appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    //just before the screen disappears again
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
//when its loaded and displayed it's first (before viewWillAppear viewDidAppear, viewWillDisappear, viewDidDisappear) and only called once
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        let titleText = K.appTitle
        var charIndex = 0.0
        for l in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(l)
            }
            charIndex += 1
        }
       
    }
    

}
