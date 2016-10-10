//
//  ViewController.swift
//  theRealPitchPerfect
//
//  Created by Mina Mahmood on 9/28/16.
//  Copyright © 2016 Mina Mahmood. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(_ sender: AnyObject) {
        print("Record button pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    
    @IBAction func stopRecording(_ sender: AnyObject) {
        print("Stop recording button pressed")
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordButton.isEnabled = false
    }
}

