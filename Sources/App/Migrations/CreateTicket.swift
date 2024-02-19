//
//  File.swift
//  
//
//  Created by Amal Mohammad Alreshi on 18/02/2024.
//

import Foundation
import Fluent

struct CreateTicket: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(Ticket.schema)
            .id()
            .field("TicketType",.string)
            .field("Price",.int)
            .field("ValidityPeriod",.date)
            .field("AvailableQuantity",.int)

        
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema(Ticket.schema).delete()
    }
}
