//
//  File.swift
//  
//
//  Created by Amal Mohammad Alreshi on 18/02/2024.
//

import Foundation
import Fluent
import Vapor

final class Ticket: Model, Content {
    static let schema = "tickets"

    @ID(key: .id)
    var id: UUID?
    
    @Children(for: \.$ticket)
    var transactions : [Transaction]
    
    @Field(key: "TicketType")
    var TicketType: String
    
    @Field(key: "Price")
    var Price: Int
    
    
    @Field(key: "ValidityPeriod")
    var ValidityPeriod: Date
    
    @Field(key: "AvailableQuantity")
    var AvailableQuantity: Int
    

    // Add your model properties here

    init() { }

    init(id: UUID? = nil , TicketType: String , Price: Int ,ValidityPeriod:Date , AvailableQuantity : Int) {
        self.id = id       
        self.TicketType = TicketType
        self.Price = Price
        self.ValidityPeriod = ValidityPeriod
        self.AvailableQuantity = AvailableQuantity
        
        // Initialize other properties
    }
}
