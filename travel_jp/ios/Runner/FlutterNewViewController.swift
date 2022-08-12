//
//  FlutterNewViewController.swift
//  Runner
//
//  Created by xyt on 2022/7/31.
//

import UIKit

class FlutterNewViewController: FlutterViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var _splashScreenView:UIView?
    override var splashScreenView: UIView {
        get{
            let view = UIView.init()
            view.backgroundColor = UIColor.white
            view.alpha = 0.5;
            return view
        }
        set{
            _splashScreenView = newValue
        }
    }
    
   

}
