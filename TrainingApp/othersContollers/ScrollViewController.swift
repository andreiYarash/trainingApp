
//  ScrollViewController.swift
//  TrainingApp
//
//  Created by Andrei Yarash on 3/19/18.
//  Copyright © 2018 Andrei Yarash. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var plan: UIView!
    @IBOutlet weak var driverImage: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var chatImageView: UIImageView!
    
    @IBOutlet weak var photoMine: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth:CGFloat = 0.0
//        scrollView.addSubview(chatImageView)
//        scrollView.addSubview(photoMine)
    
//        chatImageView.frame = CGRect(x:0, y:  0, width:view.frame.size.width, height:250)
//        photoMine.frame = CGRect(x: 0, y: chatImageView.frame.maxY + 100, width: view.frame.size.width, height: 250)
        
        //scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height )
        
       
        
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
