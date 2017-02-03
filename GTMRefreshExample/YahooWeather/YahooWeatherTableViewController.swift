//
//  YahooWeatherTableViewController.swift
//  PullToRefreshKit
//
//  Created by luoyang on 2016/12/8.
//  Copyright © 2016年 luoyang. All rights reserved.
//

import Foundation
import UIKit

class YahooWeatherTableViewController: BaseTableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.lightGray
        //Setup
        let yahooHeader = YahooWeatherRefreshHeader()
        self.tableView.gtm_addRefreshHeaderView(refreshHeader: yahooHeader, delegate: self)
//        self.tableView.gtm_addRefreshHeaderView(refreshHeader: yahooHeader) {
//            [unowned self] in
//            print("excute refreshBlock")
//            self.refresh()
//        }
        self.tableView.triggerRefreshing()
    }
    
    
    
}


import GTMRefresh
extension YahooWeatherTableViewController: GTMRefreshHeaderDelegate {
    
    // MARK: - GTMRefreshHeaderDelegate
    func refresh() {
        perform(#selector(endRefresing), with: nil, afterDelay: 3)
    }
    
    func endRefresing() {
        self.tableView.endRefreshing(isSuccess: true)
    }
}
