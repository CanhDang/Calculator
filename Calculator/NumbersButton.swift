//
//  NumbersButton.swift
//  Calculator
//
//  Created by HuuLuong on 7/18/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class NumbersButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configureButton()
    }
    
    func configureButton() -> Void{
        
        backgroundColor = UIColor.init(red: 248/255, green: 255/255, blue: 176/255, alpha: 1.0)
            
        layer.cornerRadius = 9.0
        
        titleLabel?.font = UIFont.boldSystemFontOfSize(28)
        
        self.setTitleColor(UIColor.init(red: 52/255, green: 152/255, blue: 250/255, alpha: 1.0), forState: .Normal)
        self.setTitleShadowColor(UIColor.redColor(), forState: .Normal)
    }
    
}
