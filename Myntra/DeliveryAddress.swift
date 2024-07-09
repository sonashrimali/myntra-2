import UIKit

class DeliveryAddress: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var CustomerName: UITextField!
    
    @IBOutlet weak var CustomerMob: UITextField!
    
    @IBOutlet weak var ADDPincode: UITextField!
    
    @IBOutlet weak var MainAdd: UITextField!
    
    @IBOutlet weak var City: UITextField!
    
    @IBOutlet weak var State: UITextField!
    
    @IBOutlet weak var town: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        CustomerMob.delegate = self
    }

    @IBAction func BT_Home(_ sender: UIButton) {
    }

    @IBAction func BT_Work(_ sender: UIButton) {
    }

    @IBAction func AddAddress_VC(_ sender: UIButton) {
        if validateFields() {
            let order = self.storyboard?.instantiateViewController(withIdentifier: "OrderconfirmedVC") as! OrderconfirmedVC
            self.navigationController?.pushViewController(order, animated: true)
        }
    }

    @IBAction func Btn_BArrow(_ sender: UIButton) {
        let back = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! BagVC
        self.navigationController?.pushViewController(back, animated: true)
    }

    // UITextFieldDelegate method to validate CustomerMob
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == CustomerMob {
            // Ensure the input is a number and the length does not exceed 10 characters
            let currentText = textField.text ?? ""
            let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)

            // Allow only numbers and limit the length to 10
            let allowedCharacters = CharacterSet.decimalDigits
            let characterSet = CharacterSet(charactersIn: string)
            
            if prospectiveText.count > 10 || !allowedCharacters.isSuperset(of: characterSet) {
                showAlert(message: "Mobile number is invalid.")
                return false
            }
        }
        return true
    }

    // Function to show an alert
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Invalid Input", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    // Function to validate all fields
    func validateFields() -> Bool {
        if CustomerName.text?.isEmpty == true ||
           CustomerMob.text?.isEmpty == true ||
           ADDPincode.text?.isEmpty == true ||
           MainAdd.text?.isEmpty == true ||
           City.text?.isEmpty == true ||
           State.text?.isEmpty == true ||
           town.text?.isEmpty == true {
            showAlert(message: "Please fill in all fields.")
            return false
        }
        return true
    }
}
