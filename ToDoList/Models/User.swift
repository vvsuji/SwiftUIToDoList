//
//  User.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
