//
//  RootViewController.swift
//  Runner
//
//  Created by xyt on 2022/5/23.
//

import UIKit

class RootViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "我是原生页面"
        let leftBtn = UIButton.init()
        leftBtn.setImage(UIImage.init(named: "back_full"), for: .normal)
        leftBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: leftBtn)
    }
    
    @objc func backClick()  {
        self.navigationController?.dismiss(animated: false, completion: nil)
    }
    
}
