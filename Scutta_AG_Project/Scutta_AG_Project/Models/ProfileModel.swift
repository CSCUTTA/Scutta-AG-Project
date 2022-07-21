//
//  ProfileModel.swift
//  Scutta_AG_Project
//
//  Created by Cody Scutta on 7/21/22.
//

import Foundation
import Combine
import SwiftUI

struct ProfileModel {
    var name: String
    var phone: String
    var email: String
    var bio: String
    
    //private var imageName: String
    var image: UIImage
    
    static let `default` = ProfileModel(name: "Username", phone: "012-345-6789", email: "user@email.com", bio: "About me.", image: UIImage(imageLiteralResourceName: "DefaultImage"))

}
