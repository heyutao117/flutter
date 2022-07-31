//
//  RootViewController.swift
//  Runner
//
//  Created by xyt on 2022/5/23.
//

import UIKit
import FlexLib

@objc(RootViewController)
class RootViewController: BaseViewController{
    @objc var _table : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "我是原生页面"
        _table.delegate = self;
        _table.dataSource = self
      
    }
    
  
}

extension RootViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier : String = "TestTableCellIdentifier"
        
        var cell : RootTableViewCell? = tableView.dequeueReusableCell(withIdentifier: identifier) as? RootTableViewCell
        
        if (cell == nil) {
            cell = RootTableViewCell(flex:nil,reuseIdentifier:identifier)
        }
        
        return cell!
    }
    
    
}


