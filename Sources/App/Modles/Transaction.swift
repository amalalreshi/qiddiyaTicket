//
//  File.swift
//  
//
//  Created by Amal Mohammad Alreshi on 18/02/2024.
//

import Foundation
import Fluent
import Vapor

final class Transaction: Model, Content {
    static let schema = "transactions"

    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "UserId")
    var user : User
    
    @Parent(key: "TicketId")
    var ticket : Ticket
    
    @Field(key: "Status")
    var Status: String
    
    @Field(key: "TotalPrice")
    var TotalPrice: Int
    
    
    @Field(key: "PurchaseDate")
    var PurchaseDate: Date
    
    @Field(key: "Quantity")
    var Quantity: Int
    

    // Add your model properties here

    init() { }

    init(id: UUID? = nil , Status: String , TotalPrice: Int ,PurchaseDate:Date , Quantity : Int,
         user: User.IDValue , ticket: Ticket.IDValue) {
        self.id = id
        self.Status = Status
        self.TotalPrice = TotalPrice
        self.PurchaseDate = PurchaseDate
        self.Quantity = Quantity
        self.$user.id = user
        self.$ticket.id = ticket
        
        // Initialize other properties
    }
}
