//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Павел Афанасьев on 05.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let headerView: UIView = {
        let view = ProfileHeaderView()
        view.backgroundColor = .systemGray5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let newButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Новая кнопка", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = false
        configurateHeaderView()
    }
    
    private func configurateHeaderView(){
        [headerView, newButton].forEach{view.addSubview($0)}
        headerView.frame = view.frame
        
        NSLayoutConstraint.activate([
            headerView.widthAnchor.constraint(equalTo: view.widthAnchor),
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 220)
            ])
        
        NSLayoutConstraint.activate([
            newButton.widthAnchor.constraint(equalTo: view.widthAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
