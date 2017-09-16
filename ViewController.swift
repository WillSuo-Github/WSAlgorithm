//
//  ViewController.swift
//  WSAlgorithm
//
//  Created by WS on 2017/8/16.
//  Copyright © 2017年 WS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let sourceData: [String] = ["insert sort", "Divide&conquer"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configSubviews()
    }
    
//MARK:- layout
    private func configSubviews() {
        configTableView()
    }
    
    private func configTableView() {
        let tableView = UITableView(frame: view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView()
        view.addSubview(tableView)
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = sourceData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(InsertSortController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(Divide_conquerController(), animated: true)
        default:
            break
        }
    }
}
