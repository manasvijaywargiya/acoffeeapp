import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var pricePay: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.layer.cornerRadius = 15.0
        

    }

    @IBAction func priceTapped(_ sender: Any) {
        if (inputText.text?.isEmpty)!{
            errorLabel.text = "Enter value in the box"
        }else{
            let input = Double(inputText.text!)
            pricePay.text = "\(input! * 5) $"
            //line to dismiss keyboard
            view.endEditing(true)
        }
        
    }
    

}

