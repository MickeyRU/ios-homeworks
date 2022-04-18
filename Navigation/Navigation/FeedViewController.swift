//
//  FeedViewController.swift
//  Navigation
//
//  Created by Павел Афанасьев on 05.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post = Post(title: "Моя статья")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        makeButton()
        
    }
    
    
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Посмотреть пост", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func tapAction() {
        let vc = PostViewController()
        vc.titlePost = post.title
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
