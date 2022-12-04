//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        print("Start")
        sender.alpha = 0.5
        let seconds = 0.2
        
        // This is to delay the function we want to send
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            sender.alpha = 1
            self.playSound(titleLabel: sender.currentTitle!)
            print("End")
        }
        
    }
    
    func playSound(titleLabel: String) {
        let url = Bundle.main.url(forResource: titleLabel, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
