//
//  ForgotPasswordViewController.swift
//  FirebaseApp
//
//  Created by hatice kübra kılınç on 4.03.2018.
//

import UIKit
import Firebase

class ForgotPasswordViewController: UIViewController {



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var mail: UITextField!
    
    
    @IBAction func sendMail(_ sender: Any) {
        if (!mail.hasText){  // burası nil oldugunda textfiel boş / yanlış veya doğru her türlü alt taraftaki else kısmına geçiyor ve aşşağıdaki mesakı verdiriyor
        let alertView = UIAlertController(title: "warning", message: "Please write a mail address", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "ok", style: .destructive) { (action) in
          
        }
     
        alertView.addAction(ok)

        
        present(alertView, animated: true, completion: nil)
            
        }
        else{
            let alertView = UIAlertController(title: "done", message: "please check your mail address", preferredStyle: .actionSheet)
            
            let ok = UIAlertAction(title: "ok", style: .destructive) { (action) in
                // self.displayLbl.text = "Save Canceled"
                
                //self.performSegue(withIdentifier: "BackToHome", sender: self)
            }
            
            alertView.addAction(ok)
            
            
            present(alertView, animated: true, completion: nil)
            
        }
        
          Auth.auth().sendPasswordReset(withEmail:  mail.text!) { (error) in
            
            if let error = error {
                let alertView = UIAlertController(title: "error", message: "something went wrong during sending message", preferredStyle: .actionSheet)
                
                let ok = UIAlertAction(title: "try again", style: .destructive) { (action) in
                    
                   
                }
                
                alertView.addAction(ok)
                
                
                self.present(alertView, animated: true, completion: nil)
            }
    }
    
        
        
        //self.performSegue(withIdentifier: "sender", sender: self)
        
        //                let alert = UIAlertController(title: "Subsicribe?" , message:"kjhkvgfjsvhkcjblknlm.şf", preferredStyle: .alert )
        //                let subButton = UIAlertAction(title:"Subsicribe" , style : .default , handler : self.sub)
        //
        //                let cancelButton = UIAlertAction(title: "Cancel" , style : .cancel , handler : .nil)

      }
    
    
    @IBAction func cancel(_ sender: Any) {

        

            let alertView = UIAlertController(title: "warning", message: "you are about to leave the page", preferredStyle: .actionSheet)
            
            let leave = UIAlertAction(title: "leave", style: .destructive) { (action) in
                self.performSegue(withIdentifier: "BackToHome", sender: self)
                
            }
            let stay = UIAlertAction(title: "stay", style: .destructive) { (action) in
              
            }
            
            alertView.addAction(leave)
            alertView.addAction(stay)
            
            
            self.present(alertView, animated: true, completion: nil)
    
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
//        Timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(Clock)),
//                                      userInfo: nil, repeats: true)
//
//        self.showAnimate()
        // Do any additional setup after loading the view.
        
    }
//    func showAnimate()
//    {
//        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
//        self.view.alpha = 0.5;
//        UIView.animate(withDuration: 0.25, animations: {
//            self.view.alpha = 1.0
//            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
//        });
//    }
//
//
//
//    @IBOutlet weak var LabelTimer: UILabel!
//    var Timer2 = Timer()
//    var second = 20
//    @objc func Clock(){
//        second = second-1
//        LabelTimer.text = String(second)
//        if (second == 0){
//            LabelTimer.backgroundColor = UIColor.black
//            LabelTimer.text = "TIMES UP"
//
//            if(LabelTimer.text == "times up"){
//                print (" geçiş ")
//
//
//            }
//            Timer2.invalidate()
//
//        }
//
//    }
    
    
   

}
