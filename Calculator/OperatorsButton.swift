//
//  OperatorsButton.swift
//  Calculator
//
//  Created by HuuLuong on 7/16/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class OperatorsButton: UIButton {

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configureButton()
    }
    
    func configureButton() -> Void {
        
        if tag == 101 {
            backgroundColor = UIColor.init(red: 245/255, green: 165/255, blue: 200/355, alpha: 1)
        } else {
            backgroundColor = UIColor.init(red: 116/255, green: 218/255, blue: 118/255, alpha: 1)
        }
        
        layer.cornerRadius = 8.0
        
        titleLabel?.font = UIFont.systemFontOfSize(28)
        
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    
        
        
    }

}
