//
//  ViewController.swift
//  PanGestureRecognizer
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    var kakudo:CGFloat = 180.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(hue: kakudo/360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }
    
    @IBAction func dragging(_ sender: UIPanGestureRecognizer) {
        //ドラッグした量を調べる
        let translation = sender.translation(in: view)
        //水平方向の移動量
        if translation.x>0 {
            //右方向へドラッグしたら色相環を右回り
            kakudo -= 1.0
        }else {
            //左方向へドラッグしたら色相環を左回り
            kakudo += 1.0
        }
        
        if kakudo<0 {
            kakudo += 360
        }else if kakudo >= 360{
            kakudo -= 360
        }
        //ビューの背景色を変更する
        let color = UIColor(hue: kakudo/360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        view.backgroundColor = color
    }
    
}

