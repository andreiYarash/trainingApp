import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var logInTextField: UITextField!
    
    @IBOutlet weak var passInTextField: UITextField!
    
    @IBOutlet weak var logInOutlet: UIButton!
    
    let personalInstancesData:PersonalData = PersonalData()
    
    @IBAction func exitButtonTextField(_ sender: UITextField) {
        logInTextField.resignFirstResponder()
    }
    
    @IBAction func exitButtonTextFieldPass(_ sender: UITextField) {
        passInTextField.resignFirstResponder()
    }
    
    @IBAction func exitFromTextFields(_ sender: UITapGestureRecognizer) {
        logInTextField.resignFirstResponder()
        passInTextField.resignFirstResponder()
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        let controller = UIAlertController(title: "Enter In", message:"LOGIN", preferredStyle: .alert)
        let action = UIAlertAction(title: "Enter", style: .default, handler:{(action) in
            self.performSegue(withIdentifier: "Next", sender:nil)
            
            
        })
        controller.addAction(action)
        self.present(controller,animated:true,completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("GoodBye")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
