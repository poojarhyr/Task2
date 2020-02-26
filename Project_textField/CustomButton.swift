//
//  CustomButton.swift
//  Project_textField
//
//  Created by Pooja R on 10/02/20.
//  Copyright © 2020 Pooja R. All rights reserved.
//

import UIKit

@IBDesignable open class CustomButton: UIButton {
 
   public override init(frame: CGRect) {
           super.init(frame: frame)
           setTitle("MyTitle", for: .normal)
           setTitleColor(UIColor.blue, for: .normal)
       }
   public required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
       }
   }

