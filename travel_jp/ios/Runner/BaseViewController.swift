//
//  BaseViewController.swift
//  Runner
//
//  Created by xyt on 2022/5/23.
//

import UIKit
import FlexLib

class BaseViewController: FlexBaseVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let leftBtn = UIButton.init()
        leftBtn.setImage(UIImage.init(named: "back_full"), for: .normal)
        leftBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: leftBtn)
        
        self.view.backgroundColor = UIColor.white
        if #available(iOS 13.0, *) {
            let appprerance = UINavigationBarAppearance.init()
            appprerance.backgroundColor = "0x1E90FF".uicolor()
            appprerance.titleTextAttributes = [.foregroundColor: UIColor.white]
            self.navigationController?.navigationBar.standardAppearance = appprerance
        } else {
            self.navigationController?.navigationBar.isTranslucent = false
            self.navigationController?.navigationBar.tintColor = "0x1E90FF".uicolor(alpha: 1.0)
            self.navigationController?.navigationBar.tintColor = UIColor.white
        }
     
    }
    @objc func backClick()  {
        self.navigationController?.dismiss(animated: false, completion: nil)
    }
    
}
