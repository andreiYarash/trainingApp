import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var checkButton: UIButton!
    
    
    @IBAction func checkMessage(_ sender: UIButton) {
        let controller:UIAlertController = UIAlertController(title: "Test Alert", message: nil, preferredStyle: .alert)
        let actController:UIAlertAction = UIAlertAction(title: "Button Work", style: .destructive, handler: {act in print("Work button Console Check!!!")})
        let cancelButton:UIAlertAction = UIAlertAction(title: "cancel Button", style: .cancel, handler: nil)
        controller.addAction(actController)
        controller.addAction(cancelButton)
        present(controller, animated: true, completion: nil)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
