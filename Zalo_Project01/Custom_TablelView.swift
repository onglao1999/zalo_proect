//
//  Custom_TablelView.swift
//  Zalo_Project01
//
//  Created by Ong_Lao_Ngao on 5/20/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class Custom_TablelView: UITableViewCell {

    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var contentUser: UILabel!
    @IBOutlet weak var dateUser: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       settingLablel()
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    func settingLablel(){
        //layout image
        imageUser.backgroundColor = .blue
        imageUser.translatesAutoresizingMaskIntoConstraints = false
        imageUser.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: contentView.frame.maxX/70).isActive = true
        imageUser.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageUser.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7).isActive = true
        imageUser.widthAnchor.constraint(equalTo: imageUser.heightAnchor, multiplier: 1).isActive = true
        imageUser.layer.cornerRadius = CGFloat(contentView.frame.maxY * 0.15)
        
        //layout name
        nameUser.translatesAutoresizingMaskIntoConstraints = false
        nameUser.leftAnchor.constraint(equalTo: imageUser.rightAnchor, constant: 5).isActive = true
        nameUser.topAnchor.constraint(equalTo: contentView.topAnchor, constant: contentView.frame.maxY/8).isActive = true
        nameUser.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.22).isActive = true
        nameUser.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.6).isActive = true
        
        //layout date
        dateUser.translatesAutoresizingMaskIntoConstraints = false
//        dateUser.backgroundColor = .yellow
        
        dateUser.leftAnchor.constraint(equalTo: nameUser.rightAnchor, constant: 5).isActive = true
        dateUser.topAnchor.constraint(equalTo: nameUser.topAnchor, constant: 0).isActive = true
        dateUser.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -contentView.frame.maxX/100).isActive = true
        dateUser.heightAnchor.constraint(equalTo: nameUser.heightAnchor, multiplier: 0.7).isActive = true
        
        //layout content
        contentUser.translatesAutoresizingMaskIntoConstraints = false
//        contentUser.backgroundColor = .yellow
        contentUser.topAnchor.constraint(equalTo: nameUser.bottomAnchor, constant: 5).isActive = true
        contentUser.leftAnchor.constraint(equalTo: nameUser.leftAnchor, constant: 0).isActive = true
        contentUser.heightAnchor.constraint(equalTo: nameUser.heightAnchor, multiplier: 1).isActive = true
        contentUser.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 5).isActive = true
    }
}
