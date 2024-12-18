//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Peyman on 12/16/24.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for Button in buttons {
            Button.layer.cornerRadius = 8
        }
    
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func restartButoonTapped(_ sender: UIButton) {
    }
    
    
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
}
