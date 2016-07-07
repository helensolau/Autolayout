//
//  User.swift
//  AutoLayout
//
//  Created by Helen Lau on 7/6/16.
//  Copyright © 2016 Helen Lau. All rights reserved.
//

import Foundation

struct User {
    let name: String
    let company: String
    let login: String
    let password: String
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(name: "John Appleseed", company: "Apple", login: "japple", password: "foo"),
            User(name: "Madison Bumgarner", company: "World Champion San Francisco Giants", login: "madbum", password: "foo"),
            User(name: "John Hennessy", company: "Standord", login: "hennessy", password: "foo"),
            User(name: "Bad Guy", company: "Criminals, Inc.", login: "baddie", password: "foo")
            ] {
                theDatabase[user.login] = user
            }
            return theDatabase
    }()
}

