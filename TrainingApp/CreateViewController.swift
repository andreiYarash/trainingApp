//
//  CreateViewController.swift
//  TrainingApp
//
//  Created by Andrei Yarash on 3/27/18.
//  Copyright © 2018 Andrei Yarash. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    var new:String = String()
    
    @IBOutlet var lableInS: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        lableInS.text! = new
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
