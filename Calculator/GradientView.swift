//
//  GradientView.swift
//  Calculator
//
//  Created by HuuLuong on 7/18/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class GradientView: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if tag == 140 {
            backgroundColor = UIColor.init(red: 57/255, green: 100/255, blue: 125/255, alpha: 1.0)
        } else {
            createGradient()
        }
        
    }
    
    func createGradient() -> Void{
        
        let bgGradient = CAGradientLayer()
        
        bgGradient.frame = self.frame
        
        bgGradient.colors = [UIColor.init(red: 57/255, green: 102/155, blue: 100/255, alpha: 1.0 ).CGColor, UIColor.init(red: 129/255, green: 160/255, blue: 69/255, alpha: 1.0).CGColor]
        
        
        let startPoint = CGPoint.init(x: 0, y:0)
        let endPoint = CGPoint.init(x:0.5, y:0.8)
        
        bgGradient.startPoint = startPoint
        bgGradient.endPoint = endPoint
        
        self.layer.insertSublayer(bgGradient, atIndex: 0)
    }
    
}
