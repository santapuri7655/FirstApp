//
//  ViewController.swift
//  PitchPerfect
//
//  Created by radhika santapuri on 8/29/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton?
    @IBOutlet weak var tapToRecord: UILabel?
    @IBOutlet weak var stopRecordingButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear is called")
    }

    @IBAction func pressRecord(_ sender: Any) {
        print("record button pressed!")
        tapToRecord?.text = "Recording..."
        recordButton?.isEnabled = false
        stopRecordingButton?.isEnabled = true
    }
    
    @IBAction func pressStopRecording(_ sender: Any) {
        print("Stop recording pressed")
        tapToRecord?.text = "Tap to Record"
        recordButton?.isEnabled = true
        stopRecordingButton?.isEnabled = false
    }
}

