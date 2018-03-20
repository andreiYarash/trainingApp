//
//  ViewController.swift
//  TrainingApp
//
//  Created by Andrei Yarash on 3/2/18.
//  Copyright © 2018 Andrei Yarash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logInField: UITextField!
    @IBOutlet weak var passInField: UITextField!
    
    @IBOutlet weak var leftSwitcher: UISwitch!
    @IBOutlet weak var rightSwitcher: UISwitch!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func playAction(_ sender: UIButton) {
        
        
        let controller = UIAlertController(title: "Are You Ready!?", message: "Continue!?", preferredStyle: .actionSheet)
        let yesAction = UIAlertAction(title: "Yes, I am sure", style: .destructive, handler: {action in
            let msg = self.passInField.text!.isEmpty ? "Ok": "Something"
            let controller2 =   UIAlertController(title: "what", message: msg  , preferredStyle: .alert)
            let cancel = UIAlertAction(title: "PH!!!", style: .cancel, handler: nil)
            controller2.addAction(cancel)
            self.present(controller2,animated:true,completion: nil)
        })
        let noAction = UIAlertAction(title: "No Way", style: .cancel, handler: nil)
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        if let ppc = controller.popoverPresentationController{
            ppc.sourceView = sender
            ppc.sourceRect =  sender.bounds
        }
        present(controller,animated: true,completion: nil)
    }
    
    @IBAction func logInExitResponder(_ sender: UITextField) {
        sender.resignFirstResponder()
        
    }
    @IBAction func passInExitResponder(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
   
    @IBAction func onTapGesturRecognized(_ sender: AnyObject) {
        logInField.resignFirstResponder()
        passInField.resignFirstResponder()
    }
    
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        let setting:Bool = sender.isOn
        leftSwitcher.setOn(setting, animated: true)
        rightSwitcher.setOn(setting, animated: true)
    }
    
    @IBAction func segmentControlButtonAct(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            playButton.isHidden = false
            leftSwitcher.isHidden = true
            rightSwitcher.isHidden = true
        }
        if sender.selectedSegmentIndex == 1{
            leftSwitcher.isHidden = false
            rightSwitcher.isHidden = false
            playButton.isHidden = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftSwitcher.isHidden = true
        rightSwitcher.isHidden = true

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

