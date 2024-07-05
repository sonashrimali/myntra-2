import UIKit
import FirebaseAuth
import FirebaseFirestore

class LoginVC: UIViewController {
    
    @IBOutlet weak var TF_Email: UITextField!
    @IBOutlet weak var TF_enterpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func act_resethere(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Reset_VC") as! Reset_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Google(_ sender: UIButton) {}
    
    @IBAction func Facebook(_ sender: UIButton) {}
    
    @IBAction func instagram(_ sender: UIButton) {}
    
    @IBAction func act_gethelp(_ sender: UIButton) {}
    
    @IBAction func act_login(_ sender: UIButton) {
        let email = TF_Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = TF_enterpassword.text!
        
        guard !email.isEmpty else {
            showAlert(title: "Error", message: "Email is required")
            return
        }
        
        // Validate email format using a regular expression
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        
        guard emailPredicate.evaluate(with: email) else {
            showAlert(title: "Error", message: "Please enter a valid email address.")
            return
        }
        
        guard !password.isEmpty else {
            showAlert(title: "Error", message: "Password is required")
            return
        }
        
        // Validate password criteria (e.g., minimum length)
        if password.count < 6 {
            showAlert(title: "Error", message: "Password must be at least 6 characters long.")
            return
        }
        
        loginFirebase(email: email, password: password)
    }
    
    func loginFirebase(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let self = self else { return }
            
            if let error = error {
                self.showAlert(title: "Error", message: error.localizedDescription)
                return
            }
            
            guard let user = authResult?.user else {
                self.showAlert(title: "Error", message: "User not found")
                return
            }
            
            let db = Firestore.firestore()
            let userRef = db.collection("users").document(user.uid)
            
            userRef.getDocument { document, error in
                if let error = error {
                    print("Error fetching document: \(error.localizedDescription)")
                    self.showAlert(title: "Error", message: "Failed to fetch user data")
                    return
                }
                
                guard let uid = authResult?.user.uid else {return }
                let db = Firestore.firestore()
                db.collection("user").document(uid).setData([
                    "email" : email,
                    "password" : password
                ]) { error in
                    if let error = error {
                        print("Error Saving User details:\(error.localizedDescription)")
                    }else{
                        print("user Details Saved Successfully!")
                    }
                    if let profilepage_VC = self.storyboard?.instantiateViewController(withIdentifier: "profilepage_VC") {
                        self.navigationController?.pushViewController(profilepage_VC, animated: true)
                    }
                }
            }
        }
    }
    
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
