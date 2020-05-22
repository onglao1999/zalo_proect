//
//  ViewController.swift
//  Zalo_Project01
//
//  Created by Ong_Lao_Ngao on 5/20/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewTablelView: UIView!
    @IBOutlet weak var tablelView: UITableView!
    var datas = creataData()
    override func viewDidLoad() {
        super.viewDidLoad()
        tablelView.delegate = self
        tablelView.dataSource = self
        tablelView.register(UINib(nibName: "Custom_TablelView", bundle: nil), forCellReuseIdentifier: "Custom_TablelView")
        tablelView.rowHeight = CGFloat(70)
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Custom_TablelView", for: indexPath) as! Custom_TablelView
        cell.imageUser.image = UIImage(named: datas[indexPath.row].image)
        cell.nameUser.text = datas[indexPath.row].name
        cell.contentUser.text = datas[indexPath.row].content
        cell.dateUser.text = datas[indexPath.row].date
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delege = UIContextualAction(style: .normal, title: "Xoá") { (action, view, conpletion) in
            
        }
        
        let hide = UIContextualAction(style: .normal, title: "Ẩn") { (action, view, conpletion) in
            
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
