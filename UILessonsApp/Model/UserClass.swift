//
//  UserClass.swift
//  UILessonsApp
//
//  Created by Zamir Argashokov on 05.02.2021.
//

import Foundation
import UIKit

struct User {
    var name: String
//    var picture: UIView
    
}

let boris = User(name: "Boris Johnson")
let vlad = User(name: "Vladimir Putin")
let xi = User(name: "Xi Jinping")





var friendsList: [User] =
[
boris,
vlad,
xi,
    
]

//let friendsList: [[User]] = [["Shinzo Abe", "Ilham Aliyev", "Bashar al-Assad"], ["Joe Baden"], ["Rodrigo Duterte"], ["Recep Tayyip Erdoğan"], ["Xi Jinping", "Boris Johnson"], ["Sebastian Kurz"], ["Emannuel Macrone", "Angela Merkel", "Narendra Modi"], ["Benjamin Netanyahu"],  [ "Vladimir Putin"], ["Hassan Rouhani"]]
