// error handling in swift

enum ServerError: Error {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

func checkStatus(serverNumber: Int) throws -> String {
    
    switch serverNumber {
    case 1:
        print("You have no connection.")
        throw ServerError.noConnection
    case 2:
        print("Authentication failed.")
        throw ServerError.authenticationRefused
    case 3:
        print("Server 3 is up and running.")
    default:
        print("Can't find that server.")
        throw ServerError.serverNotFound
    }
    return "Success!"
}

do {
    let result = try checkStatus(serverNumber: 1)
    print(result)
} catch ServerError.noConnection{
    print("No connection. Please try later.")
} catch ServerError.authenticationRefused{
    print("Authentication failed.")
}
catch {
    print("The problem is: \(error) ")
}
