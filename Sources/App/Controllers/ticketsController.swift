//
//  File.swift
//
//
//  Created by Amal Mohammad Alreshi on 15/02/2024.
//

import Foundation
import Vapor

struct ticketsController : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        
        let tickets = routes.grouped("tickets")
        
        //create - post
        tickets.post(use: createAllTickets)
        
        //get
        tickets.get(use : getAlltickets)
        
        //get by id
        tickets.get(":id" , use : getticketbyId )
        
        //update - put
        tickets.put(":id" , use : updateTicketInfo)
        
        //delete
        tickets.delete(":id" , use : deleteTicketsInfo)
 
    }
    
    //CRUD methods

    // post date in table////////////
    func createAllTickets(req : Request) async throws -> Ticket{
        let ticket = try req.content.decode(Ticket.self)
        try await ticket.save(on: req.db)
        return ticket
    }
    // get all  date in table////////////
    func getAlltickets(req : Request) async throws -> [Ticket] {
        
        return  try await Ticket.query(on: req.db).all()
    }
    
    // get   date by id////////////
    
    func getticketbyId(req : Request) async throws -> Ticket {
        
        guard let ticket = try await Ticket.find(req.parameters.get("id"), on: req.db) else {
                    throw Abort(.notFound)
                }
                return ticket
    }
    
    //update ticket type ////////////
    func updateTicketInfo(req : Request) async throws -> Ticket {
        guard let ticket = try await Ticket.find(req.parameters.get("id"), on: req.db) else {
                    throw Abort(.notFound)
                }
                let updatedTicket = try req.content.decode(Ticket.self)
               ticket.TicketType = updatedTicket.TicketType
                try await ticket.save(on: req.db)
                return ticket
    }
    /// delet ticket by id   ////////////
    func deleteTicketsInfo(req : Request) async throws -> Ticket {
        
        guard let ticket = try await Ticket.find(req.parameters.get("id"), on: req.db) else {
                   throw Abort(.notFound)
               }
               try await ticket.delete(on: req.db)
               return ticket
    }
    
    
 
}
