//
//  File.swift
//  
//
//  Created by Amal Mohammad Alreshi on 15/02/2024.
//

import Foundation
import Vapor

struct usersController : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        
        let users = routes.grouped("users")
        
        //get
        users.get(use : getAllusers)
        
        //create - post
        users.post(use: createAllUsers)
        
        //update - put
        users.put(":id" , use : updateUserInfo)
        //delete
        users.delete(":id" , use : deleteUserInfo)
        
        //
        users.get(":id" , use : getuserbyId )
        
    }
    
    func getAllusers (req : Request) async throws -> String {
        
        return "Get all users"
    }
    
    func createAllUsers (req : Request) async throws -> String {
        
        return "create all users"
    }
    
    func updateUserInfo(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"update user with \(id)"
    }
    
    func deleteUserInfo(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"delete user with \(id)"
    }
    
    func getuserbyId(req : Request) async throws -> String {
        
        let id = req.parameters.get("id")!
        return"user info with \(id)"
    }
}
