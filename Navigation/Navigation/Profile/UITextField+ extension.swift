//
//  в.swift
//  Navigation
//
//  Created by Павел Афанасьев on 22.04.2022.
//

import UIKit

extension UITextField {
    func paddingLeft(inset: CGFloat){
        self.leftView = UIView(frame: CGRect(x: 10, y: 0, width: inset, height: self.frame.height))
        self.leftViewMode = UITextField.ViewMode.always
    }
}
