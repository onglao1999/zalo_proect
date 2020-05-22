//
//  MenuTableViewCell.swift
//  Zalo_Project01
//
//  Created by Ong_Lao_Ngao on 5/22/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    @IBOutlet weak var imageUser: UIImageView!
    
    @IBOutlet weak var nameUser: UILabel!
    
    @IBOutlet weak var call: UIButton!
    
    @IBOutlet weak var callVideo: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        settingMenu()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func settingMenu(){
        //layout image
        imageUser.backgroundColor = .blue
        imageUser.translatesAutoresizingMaskIntoConstraints = false
        imageUser.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: contentView.frame.maxX/70).isActive = true
        imageUser.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageUser.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7).isActive = true
        imageUser.widthAnchor.constraint(equalTo: imageUser.heightAnchor, multiplier: 1).isActive = true
        imageUser.layer.cornerRadius = CGFloat(contentView.frame.maxY * 0.21)
        
        
        
        // layout callvideo
        
        callVideo.translatesAutoresizingMaskIntoConstraints = false
        callVideo.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        callVideo.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.4).isActive = true
        callVideo.widthAnchor.constraint(equalTo: callVideo.heightAnchor, multiplier: 1).isActive = true
        callVideo.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        
        
        // layout call
        
        call.translatesAutoresizingMaskIntoConstraints = false
        call.rightAnchor.constraint(equalTo: callVideo.leftAnchor, constant: -10).isActive = true
        call.heightAnchor.constraint(equalTo: callVideo.heightAnchor, multiplier: 1).isActive = true
        call.widthAnchor.constraint(equalTo: call.heightAnchor, multiplier: 1).isActive = true
        call.centerYAnchor.constraint(equalTo: callVideo.centerYAnchor).isActive = true
        
        // layout name
        
        nameUser.translatesAutoresizingMaskIntoConstraints = false
        nameUser.heightAnchor.constraint(equalTo: callVideo.heightAnchor, multiplier: 1).isActive = true
        nameUser.centerYAnchor.constraint(equalTo: callVideo.centerYAnchor).isActive = true
        nameUser.leftAnchor.constraint(equalTo: imageUser.rightAnchor, constant: 10).isActive = true
        nameUser.rightAnchor.constraint(equalTo: call.leftAnchor, constant: -10).isActive = true
    }
    
    
}
