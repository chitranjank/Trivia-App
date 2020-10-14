//

//

import UIKit

/// Define check box color
public struct CheckBoxColor {
    
    let activeColor: UIColor
    let inactiveColor: UIColor
    let inactiveBorderColor: UIColor
    let checkMarkColor: UIColor
    
    public init(activeColor: UIColor, inactiveColor: UIColor, inactiveBorderColor: UIColor, checkMarkColor: UIColor) {
        self.activeColor = activeColor
        self.inactiveColor = inactiveColor
        self.inactiveBorderColor = inactiveBorderColor
        self.checkMarkColor = checkMarkColor
    }
    
}
