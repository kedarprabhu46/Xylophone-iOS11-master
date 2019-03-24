//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox
class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        
        let tapSound = Bundle.main.url(forResource: "note1", withExtension: "wav")

        do {
            player = try AVAudioPlayer(contentsOf: tapSound!)
            guard let player = player else { return }

            //player.prepareToPlay()
            player.play()

        } catch let error as NSError {
            print(error.description)
        }
//        if let audioSoundUrl=Bundle.main.url(forResource: "note1", withExtension: "wav"){
//            var audioSoundID:SystemSoundID=0
//            AudioServicesCreateSystemSoundID(audioSoundUrl as CFURL,&audioSoundID)
//            AudioServicesPlaySystemSound(audioSoundID)
//        }
        
    }
    
  

}

