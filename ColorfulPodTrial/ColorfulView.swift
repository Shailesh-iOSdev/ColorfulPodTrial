//
//  ColorfulView.swift
//  ColorfulPodTrial
//
//  Created by Shailesh on 14/01/17.
//  Copyright © 2017 Pfizer. All rights reserved.
//

import UIKit

class ColorfulView: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // The Main Stuff
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
    
}
