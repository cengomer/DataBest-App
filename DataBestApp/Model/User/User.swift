//
//  User.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import Foundation


struct User: Identifiable , Codable {
    let id: String
    let fullname: String
    let email: String 
    
}
