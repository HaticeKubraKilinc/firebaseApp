//
//  ViewController.swift
//  FirebaseDemo
//


import UIKit
 import Firebase

class MenuViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the background gradient
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        /*
        if let user = Auth.auth().currentUser {
            self.performSegue(withIdentifier: "toHomeScreen", sender: self)
        } */
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let user = Auth.auth().currentUser {
            self.performSegue(withIdentifier: "toHomeScreen", sender: self)
        } 
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    

  
    @IBAction func ForgotPassword(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ForgotPass", sender: self)
    }
    
    
    @IBAction func X(_ sender: Any) {
     self.performSegue(withIdentifier: "Xsender", sender: self)
    
    
}
    
}
