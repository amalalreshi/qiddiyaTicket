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
        
        //get
        tickets.get(use : getAlltickets)
        
        //create - post
        tickets.post(use: createAllTickets)
        
        //update - put
        tickets.put(":id" , use : updateTicketInfo)
        //delete
        tickets.delete(":id" , use : deleteTicketsInfo)
        
        //
        tickets.get(":id" , use : getticketbyId )
        
    }
    
    func getAlltickets(req : Request) async throws -> String {
        
        return "Get all tickets"
    }
    
    func createAllTickets(req : Request) async throws -> String {
        
        return "create all Tickets"
    }
    
    func updateTicketInfo(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"update ticket with \(id)"
    }
    
    func deleteTicketsInfo(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"delete ticket with \(id)"
    }
    
    func getticketbyId(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"ticket info with \(id)"
    }
}
