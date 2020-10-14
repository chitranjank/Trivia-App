//
//  ViewController.swift
//  Trivia App
//
//  Created by chitranjan singh on 14/10/20.
//  Copyright © 2020 chitranjan singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtName : MyTestField!
    
    @IBOutlet weak var nameView : MyView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.setLightMode()
        navigationItem.title = "Trivia App"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture))
        
        view.addGestureRecognizer(tapGesture)
        
        txtName.delegate = self
        txtName.becomeFirstResponder()
    }


    @objc  func handleTapGesture( _ gesture : UITapGestureRecognizer)  {
        
        view.endEditing(true)
    }
    
  @IBAction  func btnNextClick(sender : UIButton)  {
        
    if (txtName.text?.isEmpty ?? true)
    {
        UIAlertController.showAlert("Please Enter Name", vc: self)
        return
    }
    
    
    if (txtName.text?.count ?? 0) > 20 ||  (txtName.text?.count ?? 0) < 5
    {
        UIAlertController.showAlert("Name Filed Character Must Be 5 to 20", vc: self)
        return
    }
    
    let text = txtName.text ?? ""
    let test =  text.range(of: "[^a-zA-Z\\s]", options: .regularExpression)
    
    if test != nil
    {
        UIAlertController.showAlert("Name Filed Must Be Use Alphabets", vc: self)
        return
    }

     UserDefaults.standard.set(text, forKey: Global.UserDefaultKey.userNameKey)
    
    
    let questionVC = storyboard?.instantiateViewController(withIdentifier: Global.StoryboardIdentifier.questionVC) as! QuestionVC
       
     
    self.setRootVC( vc: questionVC)
    
   
    
    }
    
    
}


extension ViewController : UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
