//
//  MenuViewController.swift
//  Zalo_Project01
//
//  Created by Ong_Lao_Ngao on 5/21/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var tablelView: UITableView!
    let data = creataData()
    override func viewDidLoad() {
        super.viewDidLoad()
        tablelView.delegate = self
        tablelView.dataSource = self
        tablelView.register(UINib(nibName: "MenuTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuTableViewCell")
        tablelView.rowHeight = CGFloat(70)
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        
        cell.imageUser.image = UIImage(named: data[indexPath.row].image)
        
        cell.nameUser.text = data[indexPath.row].name
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delege = UIContextualAction(style: .normal, title: "Xoá") { (action, view, conpletion) in
            
        }
        
        let hide = UIContextualAction(style: .normal, title: "Nhật ký") { (action, view, conpletion) in
            
        }
        
        let add = UIContextualAction(style: .normal, title: "Thêm") { (action, view, conpletion) in
            
        }
        delege.backgroundColor = .red
        hide.backgroundColor = .blue
        add.backgroundColor = .gray
        let configuration = UISwipeActionsConfiguration(actions: [delege, hide, add])
        
        return configuration
    }
}
