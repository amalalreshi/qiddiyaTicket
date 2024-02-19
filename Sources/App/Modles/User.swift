//
//  File.swift
//  
//
//  Created by Amal Mohammad Alreshi on 18/02/2024.
//

import Foundation
import Fluent
import Vapor

final class User: Model, Content {
    static let schema = "users"

    @ID(key: .id)
    var id: UUID?
    
    @Children(for: \.$user)
    var transactions : [Transaction]

    
    @Field(key: "FirstName")
    var FirstName: String
    
    @Field(key: "LastName")
    var LastName: String
    
    
    @Field(key: "Email")
    var Email: String
    
    @Field(key: "Phone")
    var Phone: Int
    
    @Field(key: "Password")
    var Password: String
    
    

    // Add your model properties here

    init() { }

    init(id: UUID? = nil , FirstName: String , LastName: String ,Email: String
, Phone : Int , Password: String) {
        self.id = id
        self.FirstName = FirstName
        self.LastName = LastName
        self.Email = Email
        self.Phone = Phone
        self.Password = Password
        
        // Initialize other properties
    }
}
