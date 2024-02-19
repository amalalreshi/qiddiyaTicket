//
//  File.swift
//  
//
//  Created by Amal Mohammad Alreshi on 18/02/2024.
//

import Foundation
import Fluent

struct CreateTransaction: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(Transaction.schema)
            .id()
            .field("Status",.string)
            .field("TotalPrice",.int)
            .field("PurchaseDate",.date)
            .field("Quantity",.int)
            .field("UserId", .uuid, .references("user", "id"))
            .field("TicketId", .uuid, .references("ticket", "id"))


        
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema(Transaction.schema).delete()
    }
}
