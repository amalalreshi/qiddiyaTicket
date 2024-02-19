import Vapor
import Fluent
import FluentPostgresDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // register routes
    
    
    app.databases.use(.postgres(configuration:
    SQLPostgresConfiguration(hostname: "localhost", username: "postgres", password: "",
         database: "qiddiyadb",
    tls: .prefer(try .init(configuration: .clientDefault )))), as: .psql)
    
    app.migrations.add(CreateUser())
    app.migrations.add(CreateTicket())
    app.migrations.add(CreateTransaction())

    
    try app.register(collection: usersController())
    
    try app.register(collection: ticketsController())

    try app.register(collection: transactionsController())

    
    try routes(app)
}
