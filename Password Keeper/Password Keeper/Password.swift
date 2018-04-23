//
//  Password.swift
//  Password Keeper
//
//  Created by David Fisher on 4/11/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit
import Firebase

class Password: NSObject {

  var service: String
  var username: String
  var password: String
    var id: String?
    
    var serviceKey = "service"
    var usernameKey = "username"
    var passwordKey = "password"

  init(service: String, username: String, password: String) {
    self.service = service
    self.username = username
    self.password = password
  }
    
    init(documentSnapshot: DocumentSnapshot) {
        self.id = documentSnapshot.documentID
        let data = documentSnapshot.data()!
        self.service = data[serviceKey] as! String
        self.username = data[usernameKey] as! String
        self.password = data[passwordKey] as! String
    }
    
    var data: [String: Any] {
        return [serviceKey: self.service,
                usernameKey: self.username,
                passwordKey: self.password]
    }
}
