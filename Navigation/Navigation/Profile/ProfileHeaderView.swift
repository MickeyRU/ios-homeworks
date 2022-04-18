//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Павел Афанасьев on 09.04.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let profileStatus = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpProfile()
    }
    
    func setUpProfile() {
        
        //добавляем фотку профиля
        let profilePhoto = UIImageView(frame: CGRect(x: self.safeAreaInsets.left + 16, y: self.safeAreaInsets.top + 16, width: 100, height: 100))
        profilePhoto.image = UIImage(named: "Марго")
        profilePhoto.layer.cornerRadius = 50
        profilePhoto.layer.borderWidth = 3
        profilePhoto.layer.borderColor = UIColor.white.cgColor
        profilePhoto.contentMode = .scaleAspectFill
        profilePhoto.clipsToBounds = true
        addSubview(profilePhoto)
        
        //добавляем заголовок
        let headLabel = UILabel(frame: CGRect(x: profilePhoto.frame.maxX + 30 , y: self.safeAreaInsets.top + 27, width: window!.frame.width - 32, height: 35))
        headLabel.font = .systemFont(ofSize: 18, weight: .bold)
        headLabel.textColor = .black
        headLabel.text = "Корги Марго"
        addSubview(headLabel)
        
        //добавляем статус в профиле
        profileStatus.frame = CGRect(x: profilePhoto.frame.maxX + 30, y: profilePhoto.frame.origin.y - 16, width: headLabel.frame.width, height: 33)
        profileStatus.font = .systemFont(ofSize: 14, weight: .regular)
        profileStatus.textColor = .gray
        profileStatus.text = "Waiting for something"
        addSubview(profileStatus)
        
        //добавляем кнопку "показать статус"
        let showStatusButton = UIButton(frame: CGRect(x: self.safeAreaInsets.left + 16, y: profilePhoto.frame.maxY + 16, width: window!.frame.width - 32, height: 50))
        showStatusButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        showStatusButton.setTitle("Show status", for: .normal)
        showStatusButton.titleLabel?.textColor = .white
        showStatusButton.layer.cornerRadius = 4
        showStatusButton.backgroundColor = .blue
        showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        showStatusButton.layer.shadowRadius = 4
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOpacity = 0.7
        showStatusButton.addTarget(self, action: #selector(pushShowStatusButton), for: .touchUpInside)
        addSubview(showStatusButton)
    }
        
    @objc func pushShowStatusButton(sender: UIButton!) {
        print("Status is: \(profileStatus.text)")
    }
}
