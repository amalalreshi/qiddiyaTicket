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
        
        //get
        transactions.get(use : getAlltransactions)
        
        //create - post
        transactions.post(use: createAlltransactions)
        
        //update - put
        transactions.put(":id" , use : updatetransactionInfo)
        //delete
        transactions.delete(":id" , use : deletetransactionInfo)
        
        //
        transactions.get(":id" , use : gettransactionbyId )
        
    }
    
    func getAlltransactions(req : Request) async throws -> String {
        
        return "Get all transactions"
    }
    
    func createAlltransactions(req : Request) async throws -> String {
        
        return "create all transactions"
    }
    
    func updatetransactionInfo(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"update transaction with \(id)"
    }
    
    func deletetransactionInfo(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"delete transaction  with \(id)"
    }
    
    func gettransactionbyId(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"transaction  info with \(id)"
    }
}
