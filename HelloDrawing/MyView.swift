//
//  MyView.swift
//  HelloDrawing
//
//  Created by Vinukonda,Sai Manikanta Durga Prasad on 4/9/19.
//  Copyright © 2019 Vinukonda,Sai Manikanta Durga Prasad. All rights reserved.
//

import UIKit

class MyView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to:CGPoint(x:200.0, y:100.0))
        path.addLine(to:CGPoint(x:300.0, y:250.0))
        path.addLine(to: CGPoint(x:200.0,y:400.0))
        path.close()
        path.lineWidth = 5.0
        UIColor.red.setStroke()
        UIColor.blue.setFill()
        path.stroke()
        path.fill()
    }
 

}
