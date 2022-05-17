//
//  UIView+ extension.swift
//  Navigation
//
//  Created by Павел Афанасьев on 25.04.2022.
//

import UIKit

extension UIView {
    // статическая переменная - для более удобного упоминания классов при работе с таблицами
    static var identifier: String {
        return String(describing: self)
    }
    
    // метод для тряски полей, которые требуется заполнить пользователю при авторитизации
    func shakeField() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}
