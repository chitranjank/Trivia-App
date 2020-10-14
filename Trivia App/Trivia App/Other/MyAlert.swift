//
//  MyAlert.swift
//  Trivia App
//
//  Created by chitranjan singh on 14/10/20.
//  Copyright © 2020 chitranjan singh. All rights reserved.
//
//

import UIKit


extension UIAlertController
{
    
    static func showAlert( _ msg : String, vc : UIViewController)
    {
        let alertVC = UIAlertController(title: "Message", message: msg, preferredStyle: .alert)
        
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        
        vc.present(alertVC, animated: true, completion: nil)
        
        
    }
    
    
}
