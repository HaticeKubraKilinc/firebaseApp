//
//  X.swift
//  FirebaseApp
//
//  Created by hatice kübra kılınç on 12.03.2018.
//  Copyright © 2018 Robert Canton. All rights reserved.
//

import UIKit
import MessageUI

//import mailcore2

class X: UIViewController , MFMailComposeViewControllerDelegate{

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//       
//    }
//    
//    
//
//    @IBAction func SendMail(_ sender: Any) {
//        
//
//            
//            let smtpSession = MCOSMTPSession()
//            smtpSession.hostname = "smtp.gmail.com"
//            smtpSession.username = "charlesxavier1221@gmail.com"
//            smtpSession.password = "fakepassword1234"
//            smtpSession.port = 465
//            smtpSession.authType = MCOAuthType.saslPlain
//            smtpSession.connectionType = MCOConnectionType.TLS
//            smtpSession.connectionLogger = {(connectionID, type, data) in
//                if data != nil {
//                    if let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue){
//                        NSLog("Connectionlogger: \(string)")
//                    }
//                }
//            }
//            let builder = MCOMessageBuilder()
//            builder.header.to = [MCOAddress(displayName: "Charles", mailbox: "charlesxavier1221@gmail.com")]
//            builder.header.from = MCOAddress(displayName: "Xavier", mailbox: "charlesxavier1221@gmail.com")
//            builder.header.subject = "Test Email"
//            builder.htmlBody="<p>Thank you for watching</p>"
//            
//            
//            let rfc822Data = builder.data()
//            let sendOperation = smtpSession.sendOperation(with: rfc822Data)
//            sendOperation?.start { (error) -> Void in
//                if (error != nil) {
//                    NSLog("Error sending email: \(error)")
//                    
//                    
//                } else {
//                    NSLog("Successfully sent email!")
//                    
//                    
//                }
//            }
//        ///  ***********
////
////        let mailComposeViewController = configureMailComposeViewController()
////        if MFMailComposeViewController.canSendMail()
////        {
////            self.present(mailComposeViewController, animated: true, completion: nil)
////
////        }else{
////            self.showSendMailErrorAlert()
////        }
//        ///  ***********
//   
//        
//    }
//    var  Random_X =  5
//    func configureMailComposeViewController()-> MFMailComposeViewController{
//        let mailComposerVC = MFMailComposeViewController()
//        mailComposerVC.mailComposeDelegate = self
//        mailComposerVC.setToRecipients(["htckbr_@outlook.com"])
//        mailComposerVC.setSubject("subject x")
//        //mailComposerVC.setMessageBody("message body x", isHTML: false)
//        mailComposerVC.setMessageBody("message body x", isHTML: false)
//        
//        return mailComposerVC
//        
        
 //   }

    func showSendMailErrorAlert (){
        let showSendMailErrorAlert = UIAlertView(title : "could not send a mail", message:"Your device must have an active a mail account" , delegate : self , cancelButtonTitle : "ok")
        
        showSendMailErrorAlert.show()
        
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
  
    
    @IBOutlet weak var label: UILabel!
    @IBAction func GetRandomNum(_ sender: Any) {
        let num = String(arc4random_uniform(100000))
        label.text = "\(num)"
        
        
       
        
        
    }
    
    
    @IBAction func BACK(_ sender: Any) {
        
        self.performSegue(withIdentifier: "backtoHOME", sender: self)
    }
    
    
    
    
 
}
