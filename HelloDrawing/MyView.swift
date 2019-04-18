//
//  MyView.swift
//  HelloDrawing
//
//  Created by Vinukonda,Sai Manikanta Durga Prasad on 4/9/19.
//  Copyright © 2019 Vinukonda,Sai Manikanta Durga Prasad. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    var lines:[[CGPoint]] = []
    var colors:[UIColor] = []
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        lines.append([(touch?.location(in:self))!])
        colors.append(UIColor(displayP3Red: CGFloat.random(in:0 ... 1.0), green: CGFloat.random(in:0 ... 1.0), blue: CGFloat.random(in:0 ... 1.0), alpha: 1.0))
        print("Began: \(String(describing: touch?.location(in: self))))")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        lines[lines.count-1].append((touch?.location(in:self))!)
        setNeedsDisplay()
        print("Moved: \(String(describing: touch?.location(in: self))))")
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        lines[lines.count-1].append((touch?.location(in:self))!)
        print("Ended: \(String(describing: touch?.location(in: self))))")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
//        let path = UIBezierPath()
//        path.move(to:CGPoint(x:200.0, y:100.0))
//        path.addLine(to:CGPoint(x:300.0, y:250.0))
//        path.addLine(to: CGPoint(x:200.0,y:400.0))
//        path.close()
//        path.lineWidth = 5.0
//        UIColor.red.setStroke()
//        UIColor.blue.setFill()
//        path.stroke()
//        path.fill()
        if lines.count == 0 {
            return
        }
        for i in 0..<lines.count{
            
        
        let path = UIBezierPath()
        path.move(to: lines [i][0])
        for pt in lines[i] {
            path.addLine(to:pt)
        }
            colors[i].setStroke()
        //UIColor .red.setStroke()
        path.lineWidth = 8.0
        path.stroke()
    }
    }
 

}
