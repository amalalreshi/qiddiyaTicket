//
//  File.swift
//
//
//  Created by Amal Mohammad Alreshi on 15/02/2024.
//

import Foundation
import Vapor

struct transactionsController : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        
        let transactions = routes.grouped("transactions")
        
        //create - post
        transactions.post(use: createAlltransactions)
        
        //get
        transactions.get(use : getAlltransactions)
    
        //get by id
        transactions.get(":id" , use : gettransactionbyId )
        
        //update - put
        transactions.put(":id" , use : updatetransactionInfo)
        //delete
        transactions.delete(":id" , use : deletetransactionInfo)
 
        
    }
    // CRUD
    
    // post date in table////////////

    func createAlltransactions(req : Request) async throws -> Transaction {
        
        let transaction = try req.content.decode(Transaction.self)
        let ticketInf = try await Ticket.find(transaction.$ticket.id, on: req.db)
        print("ticketInf.price \(ticketInf?.$Price.value)")
        transaction.TotalPrice = (ticketInf?.$Price.value ?? 20) * (transaction.$Quantity.value ?? 10 )
        try await transaction.save(on: req.db)
        return transaction
    }
    // get all  date in table////////////

    func getAlltransactions(req : Request) async throws -> [Transaction] {
        
        return try await Transaction.query(on: req.db).all()
    }
    
    
    // get   date by id////////////

    func gettransactionbyId(req : Request) async throws -> Transaction {
        
        guard let transaction = try await Transaction.find(req.parameters.get("id"), on: req.db) else {
                    throw Abort(.notFound)
                }
                return transaction
            }
    
    
    //update ticket type ////////////

    func updatetransactionInfo(req : Request) async throws -> Transaction {
        
        guard let transaction = try await Transaction.find(req.parameters.get("id"), on: req.db) else {
                    throw Abort(.notFound)
                }
                let updatetransaction = try req.content.decode(Transaction .self)
                transaction.Status = updatetransaction.Status
                transaction.Quantity = updatetransaction.Quantity
                try await transaction.save(on: req.db)
                return transaction
    }
    
    /// delet ticket by id   ////////////

    func deletetransactionInfo(req : Request) async throws -> Transaction {
        
        guard let transaction = try await Transaction.find(req.parameters.get("id"), on: req.db) else {
                   throw Abort(.notFound)
               }
               try await transaction .delete(on: req.db)
               return transaction
    }
    
 
}
