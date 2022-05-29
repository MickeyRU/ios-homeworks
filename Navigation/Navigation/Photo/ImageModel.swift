//
//  ImageModel.swift
//  Navigation
//
//  Created by Павел Афанасьев on 11.05.2022.
//

import UIKit

// Модель для картинок
var photoGalery: [UIImage] = {
    var photoGalery = [UIImage]()
    for i in 1...20 {
        photoGalery.append(UIImage(named: "\(i)")!)
    }
    return photoGalery
}()
