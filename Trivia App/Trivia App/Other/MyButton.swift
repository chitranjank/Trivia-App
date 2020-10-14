//
//  Trivia App
//
//  Created by chitranjan singh on 14/10/20.
//  Copyright © 2020 chitranjan singh. All rights reserved.
//
//

import UIKit

class MyButton: UIButton {

   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    func setup() {
        
     
        
        self.layer.cornerRadius = 5
        
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 10.0
        self.layer.shadowOffset = CGSize.zero
        
       
    }
    

}





