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
    var cards: [UIImage] = Card.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startTimer()
        for Button in buttons {
            Button.layer.cornerRadius = 8
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButoonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
}
