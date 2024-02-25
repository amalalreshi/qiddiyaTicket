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
        
        
        //create - post
        users.post(use: createAllUsers)
        
        //get all
        users.get(use : getAllusers)
        
        //get by Id
        users.get(":id" , use : getuserbyId )
        
        //update - put
        users.put(":id" , use : updateUserInfo)
        //delete
        users.delete(":id" , use : deleteUserInfo)
 
    }
    // CRUD
    
    // post date in table////////////
    func createAllUsers (req : Request) async throws -> User{
        
        let user = try req.content.decode(User.self)
        try await user.save(on: req.db)
        return user
    }

    // get all  date in table////////////

    func getAllusers (req : Request) async throws -> [User] {
        
        
        return try await User.query(on: req.db).all()
    }
    // get   date by id////////////

    
    func getuserbyId(req : Request) async throws -> User {
        guard let user = try await User.find(req.parameters.get("id"), on: req.db) else {
                    throw Abort(.notFound)
                }
                return user
    }
      //update phone of user ////////////

    func updateUserInfo(req : Request) async throws -> User {
        
        guard let user = try await User.find(req.parameters.get("id"), on: req.db) else {
                    throw Abort(.notFound)
                }
                let updateuser = try req.content.decode(User.self)
                user.Phone = updateuser.Phone
                user.Email =  updateuser.Email
                user.Password =  updateuser.Password
                try await  user.save(on: req.db)
                return  user
    }
    
    /// delet ticket by id   ////////////
    func deleteUserInfo(req : Request) async throws -> User {
        
        guard let user = try await User.find(req.parameters.get("id"), on: req.db) else {
                   throw Abort(.notFound)
               }
               try await user.delete(on: req.db)
               return user
    }
    
    //count total price
//    func totalPrice (req : Request) async throws -> User{
//        1- find the total price by user id and see the qunity of ticke (quntity of ticket )
//        2- then find the price of each ticket and sum (Sum the price)
//        3- totalprice will be quntity of ticket  * Sum the price
//        4- save it on ver and will be returen on frontend of app
//    }
//
}
