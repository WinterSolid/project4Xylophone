//
//  ViewController.swift
//  project4Xylophone
//
//  Created by Zakee Tanksley on 7/7/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: (sender.titleLabel!.text!))
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
            
        }
    }
    
    func playSound(soundName: String) {
        // May need to add the directory the sound is in : Sounds/C
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
